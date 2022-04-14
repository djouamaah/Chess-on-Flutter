import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class AuthenticationController extends GetxController {
  
  Future<void> login(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: password);
      return Future.value();
    } on FirebaseAuthException catch (e) {
      //print(e.code);
      if (e.code == 'user-not-found') {
        return Future.error("User not found");
      } else if (e.code == 'wrong-password') {
        return Future.error("Wrong password");
      }
    }
  }

  Future<void> signup(String email, String password) async {
    try {
      await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return Future.value();
    } on FirebaseAuthException catch (e) {
      print(e.code);
      if (e.code == 'weak-password') {
        return Future.error("The password is too weak");
      } else if (e.code == 'email-already-in-use') {
        return Future.error("The email is taken");
      }
    }
  }

  Future<void> logout() async {
    try {
      await FirebaseAuth.instance.signOut();
      return Future.value();
    } catch (e) {
      return Future.error("Logout error");
    }
  }

  Future<String> registerUser(String name, String email, String password) async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('registerUser');
    try {
      final resp = await callable.call(<String, dynamic>{
        'email': email,
        'pass': password,
        'name': name,
      });
      print("Created user : ${resp.data}");
      return Future.value(resp.data);
    }catch (e){
      return Future.error('error');
    } 
  }

  String getUserDisplayName(){
    String? displayName = FirebaseAuth.instance.currentUser?.displayName;
    if(displayName != null){
      return displayName;
    }else{
      return "";
    }
    
  }

}
