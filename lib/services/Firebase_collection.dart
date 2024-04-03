import 'package:cloud_firestore/cloud_firestore.dart';
import 'fire_collection_all_name.dart';

class Firebase_collection {
  ///employee
  // Create User collections
  Future<dynamic> Firebase_collections_data(String Name, String Email,
      String User_profile, String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_data)
        .doc(uni_user_id);
    docRef.set({
      'Name': Name,
      'Email': Email,
      'User_profile': User_profile,
      'uni_user_id': uni_user_id,
      'invented_by_id': '',
      'messaging_token': '',
      'mobile_number': '',
      'about': '',
      'save_job_list':[],
      'work_experience': [],
      'education': [],
      'language': [],
      'Skill': [],
      'resume': [],
    });
    FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_list);
    FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_status);
    return docRef.id;
  }
  ///-----------------------------------------

  // Create Referral_list_add
  Future<dynamic> Referral_list_add(var jsondata,String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_list).doc();
    jsondata['referral_doc_id']=docRef.id;
    docRef.set(jsondata);

    print('json_of_notifi');
    print(jsondata);
    print(docRef.id);
    return docRef.id;
  }
  ///Referral_list_Update
  Future<dynamic> Referral_list_Update(var jsondata, String docRef_id,String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_list).doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  //Referals_delete
  Future<dynamic> Referals_delete_particular_data(String user_id,String collection_id) async {
    final data= FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_list).doc(collection_id).delete();
    return data;
  }





///--------------------------


  ///-----------------------------------------  Referral_status

  // Create Referral_list_add
  Future<dynamic> Referral_status_add(var jsondata) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_status).doc();
    jsondata['Refe_status_id']=docRef.id;
    docRef.set(jsondata);

    print('json_of_notifi');
    print(jsondata);
    print(docRef.id);
    return docRef.id;
  }
  ///Referral_list_Update
  Future<dynamic> Referral_status_Update(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_status).doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  //Referals_delete
  Future<dynamic> Referral_status_delete(String user_id,String collection_id) async {
    final data= FirebaseFirestore.instance.collection(Fire_collection_Name().Referral_status).doc(collection_id).delete();
    return data;
  }





  ///--------------------------Referral_status end







  // Create User collections
  Future<dynamic> User_data_add(var jsondata, String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_data)
        .doc(uni_user_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  Future<dynamic> delete_particular_data(String  collection_name, String collection_id) async {
    final data=await  FirebaseFirestore.instance.collection(collection_name).doc(collection_id).delete();
    return data;
  }


  ///empr notification_data
  Future<dynamic> empr_notification_data(notification_data) async {
    DocumentReference docRef = await FirebaseFirestore.instance
        .collection(Fire_collection_Name().Empr_notification)
        .add(notification_data);
    var json={
      "notification_doc_id":docRef.id,
    };
    Empr_update_notification_data(json,docRef.id);
    return docRef.id;
  }
  ///empr update time
  Future<dynamic> Empr_update_notification_data(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().Empr_notification)
        .doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }



///Notification_collection
  Future<dynamic> notification_data(notification_data) async {

    DocumentReference docRef = await FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_notification)
        .add(notification_data);
    var json={
      "notification_doc_id":docRef.id,
    };
    update_notification_data(json,docRef.id);
    return docRef.id;
  }

  ///update time
  Future<dynamic> update_notification_data(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_notification)
        .doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }



  ///employer
  Future<dynamic> employer_Firebase_collections_data(String Name, String Email,
      String User_profile, String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().Employer_data)
        .doc(uni_user_id);
    docRef.set({
      'Name': Name,
      'Email': Email,
      'Company_logo': '',
      'User_profile': User_profile,
      'uni_user_id': uni_user_id,
    });
    return docRef.id;
  }

  // Create employer collections
  Future<dynamic> employer_data_add(var jsondata, String uni_user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().Employer_data)
        .doc(uni_user_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  ///Vacancy_job_list
  Future<dynamic> Vacancy_job_list_data(vacancy_job_list) async {

    DocumentReference docRef = await FirebaseFirestore.instance
        .collection(Fire_collection_Name().Vacancy_job_list)
        .add(vacancy_job_list);
    var json={
      "vacancy_job_doc_id":docRef.id,
    };
    Vacancy_job_list_data_add(json,docRef.id);
    return docRef.id;
  }
  
  ///upadte time
  Future<dynamic> Vacancy_job_list_data_add(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().Vacancy_job_list)
        .doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  ///update_time_save_job_list_data
  Future<dynamic> save_job_list_data(var save_job_list_data,String user_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_data)
        .doc(user_id);
    docRef.update(save_job_list_data);
    return docRef.id;
  }

  ///User_Apply_job
  Future<dynamic> User_Apply_job_data(var user_Apply_job_data) async {
    DocumentReference docRef = await FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_Apply_job)
        .add(user_Apply_job_data);
    var json={
      "User_Apply_doc_id":docRef.id,
    };
    update_User_Apply_jobdata(json,docRef.id);
    return docRef.id;
  }

  ///update User_Apply_job
  Future<dynamic> update_User_Apply_jobdata(var save_job_list_data,String User_Apply_doc_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().User_Apply_job)
        .doc(User_Apply_doc_id);
    docRef.update(save_job_list_data);
    return docRef.id;
  }


  ///transaction payment list
  Future<dynamic> transaction_list(tran_list) async {

    DocumentReference docRef = await FirebaseFirestore.instance
        .collection(Fire_collection_Name().transaction_list)
        .add(tran_list);
    var json={
      "tran_doc_id":docRef.id,
    };
    Vacancy_job_list_data_add(json,docRef.id);
    return docRef.id;
  }


  ///transaction update list
  Future<dynamic> transaction_update_list(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance
        .collection(Fire_collection_Name().transaction_list)
        .doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }




  ///-----------------------------------------  withdraw_request to admin

  // Create withdraw_request_add
  Future<dynamic> withdraw_request_add(var jsondata) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().withdraw_request_list).doc();
    jsondata['withdraw_req_id']=docRef.id;
    docRef.set(jsondata);

    print('json_of_notifi');
    print(jsondata);
    print(docRef.id);
    return docRef.id;
  }

  ///withdraw_request_Update
  Future<dynamic> withdraw_request_Update(var jsondata, String docRef_id) async {
    DocumentReference docRef = FirebaseFirestore.instance.collection(Fire_collection_Name().withdraw_request_list).doc(docRef_id);
    docRef.update(jsondata);
    return docRef.id;
  }

  //withdraw_request_delete
  Future<dynamic> withdraw_request_delete(String user_id,String collection_id) async {
    final data= FirebaseFirestore.instance.collection(Fire_collection_Name().withdraw_request_list).doc(collection_id).delete();
    return data;
  }





///--------------------------Referral_status end



}
