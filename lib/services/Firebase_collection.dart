import 'package:alindor_test/services/fire_collection_all_name.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Firebase_collection {
  ///employee
  // Create User collections
  Future<dynamic> Firebase_collections_data({String uni_user_id='',var user_jason}) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name.User_data)
        .doc(uni_user_id);
    docRef.set(user_jason);
    return docRef.id;
  }


}
