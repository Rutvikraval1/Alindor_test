
import 'package:alindor_test/Screens/IndRecord_screen/IndRecord_screen.dart';
import 'package:alindor_test/services/Firebase_collection.dart';
import 'package:alindor_test/services/firebase_auth.dart';
import 'package:alindor_test/services/pref_manager.dart';
import 'package:alindor_test/utils/app_locale.dart';
import 'package:alindor_test/utils/app_style.dart';
import 'package:alindor_test/utils/custColors.dart';
import 'package:alindor_test/widgets/Scaffold_widget.dart';
import 'package:alindor_test/widgets/asset_img/asset_image_show.dart';
import 'package:alindor_test/widgets/card/Cus_container.dart';
import 'package:flutter/material.dart';

class login_screen extends StatefulWidget {
  const login_screen({super.key});

  @override
  State<login_screen> createState() => _login_screenState();
}

class _login_screenState extends State<login_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold_widget(
      backgroundColor: AppColors.primary_color_bg,
      body: WillPopScope(
        onWillPop: () async => false,
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: (){
                    signInWithGoogle(context);
                  },
                  child: google_card(context))
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget google_card(context){
    return cus_container(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Asset_imge_show().Img_asset(AppImages.google_icon,height: 30),
            const SizedBox(width: 20,),
            Text('Google auth',style: App_style().textWhite_IR,)
          ],
        ),
      ),
    );
  }


  void signInWithGoogle(context) {
    FocusScope.of(context).requestFocus(FocusNode());
    FirebaseAuthMethods().signInWithGoogle().then((user) async {
      print('value');
      print(user);
      var user_data={
        "displayName":user?.displayName,
        "email":user?.email,
        "isEmailVerified":user?.emailVerified,
        "isAnonymous":user?.isAnonymous,
        "creationTime":user?.metadata.creationTime,
        "lastSignInTime":user?.metadata.lastSignInTime,
        "phoneNumber":user?.phoneNumber,
        "photoURL":user?.photoURL,
        "refreshToken":user?.refreshToken,
        "tenantId":user?.tenantId,
        "uid":user?.uid
      };
      if (user != null) {
        await Firebase_collection().Firebase_collections_data(
          uni_user_id: user.uid,
          user_jason: user_data
        );
        data_add(user_data,user.uid);
        ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
          content: Text("Login Successful"),
        ));
        Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => const IndRecord_screen(),));
      }
    });
  }
  Future<void> data_add(user_data,USER_ID) async {
    Preferences.addDataToSF(Preferences.user_email, user_data['email'].toString());
    Preferences.addDataToSF(Preferences.user_name, user_data['displayName'].toString());
    Preferences.addDataToSF(Preferences.user_phoneNumber, user_data['phoneNumber'].toString());
    Preferences.addDataToSF(Preferences.user_photoURL, user_data['photoURL'].toString());
    Preferences.addDataToSF(Preferences.USER_ID, USER_ID);
    Preferences.addDataToSF(Preferences.USER_ACTIVE, true);
  }
}
