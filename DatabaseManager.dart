import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseManager {
  final CollectionReference UserProfile =
      FirebaseFirestore.instance.collection('UserProfile');

  Future<void> createUserData(String name,String dob,  String insta, String uid) async {
    return await UserProfile.doc(uid).set({

      'name': name,
      'dob': dob,
      'Instagram': insta,


    });
  }
}
