import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app_4/DatabaseManager.dart';

class AuthenticationServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  // registration
  Future CreateNewUser(
      String name, String email, String dob,  String insta, String Pword) async {
    try {
      UserCredential result = await _auth.createUserWithEmailAndPassword(
          email: email, password: Pword);
      User? user = result.user;
      await DatabaseManager().createUserData(name, dob ,insta, user!.uid);
      return user;
    } catch (e) {
      print(e.toString());
    }
  }

  //login
  Future loginUser(String email, String Pword) async {
    try {
      UserCredential result =
          await _auth.signInWithEmailAndPassword(email: email, password: Pword);
      return result.user;
    } catch (e) {
      print(e.toString());
    }
  }

  // signout

  Future signOut() async {
    try {
      return _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }
}
