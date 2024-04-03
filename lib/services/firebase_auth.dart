import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../Flutter_toast_mes.dart';
import '../fire_collection_all_name.dart';
import '../ui/screens/employee/menu/home_view.dart';

class FirebaseAuthMethods {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  Stream<User?> get authState => _auth.authStateChanges();

  // Login with email and password
// Login with email and password
  Future<User?> signInWithEmailAndPassword(
      {required String email,
        required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
          email: email,
          password: password
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        Flutter_toast_mes().Error_Message('No user found for that email.');
        return null;
      } else if (e.code == 'wrong-password') {
        Flutter_toast_mes().Error_Message('Wrong password provided for that user.');
        return null;
      }else {
        return null;
      }
    }
  }

  Future<User?> signUpWithEmailAndPassword(
      {required String email,
        required String password}) async {
    try {
      final credential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        Flutter_toast_mes().Error_Message('The password provided is too weak.');
        return null;
      } else if (e.code == 'email-already-in-use') {
        Flutter_toast_mes().Error_Message(
            'The account already exists for that email.');
        return null;
      } else {
        return null;
      }
    }catch(e){
      print(e);
    }
  }

  // Google Sign In
  Future<User?> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    try {
      final credential_data =  await FirebaseAuth.instance.signInWithCredential(credential);
      return credential_data.user;
    } on FirebaseAuthException catch (e) {
      print("check data");
      print(e);
      if (e.code == 'weak-password') {
        Flutter_toast_mes().Error_Message('The password provided is too weak.');
        return null;
      } else if (e.code == 'email-already-in-use') {
        Flutter_toast_mes().Error_Message(
            'The account already exists for that email.');
        return null;
      } else {
        return null;
      }
    }
  }

  // Phone Sign In
  Future<void> verifyPhoneNumber({
    required BuildContext context,
    required String phoneNumber,
  }) async {
    await _auth.verifyPhoneNumber(
        timeout: const Duration(seconds: 30),
        phoneNumber: phoneNumber,
        verificationCompleted: (PhoneAuthCredential credential) async {
          await _auth.signInWithCredential(credential).then((value) => {
                if (value.user != null)
                  {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomeView()))
                  }
              });
        },
        verificationFailed: (FirebaseAuthException e) {
          if (e.code == 'invalid-phone-number') {
            if (kDebugMode) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('The provided phone number is not valid.'),
                ),
              );
              print('The provided phone number is not valid.');
            }
          }
        },
        codeSent: (String verificationId, int? resendToken) async {
          // Create a PhoneAuthCredential with the code
        },
        codeAutoRetrievalTimeout: (String verificationId) {});
  }



  /// LinkedIn login
  Future<User?> LinkedIn_login({required String token}) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithCustomToken(token);
      return credential.user;
    } on FirebaseAuthException catch (e) {
      print('dsdsfsfsffdf');
      print(e);
      print(e.code);
      if (e.code == 'user-not-found') {
        Flutter_toast_mes().Error_Message('No user found for that email.');
        return null;
      } else if (e.code == 'wrong-password') {
        Flutter_toast_mes().Error_Message('Wrong password provided for that user.');
        return null;
      }else {
        return null;
      }
    }
  }

}
