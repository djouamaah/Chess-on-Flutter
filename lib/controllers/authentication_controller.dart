import 'package:cloud_functions/cloud_functions.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';

enum SingingCharacter {student, teacher}

class AuthenticationController extends GetxController {

  final databaseRef = FirebaseDatabase.instance.ref();

  final Rx<SingingCharacter?> _role = SingingCharacter.student.obs;
  String userName = "";
  String userRole = "";

  RxInt userInfoState = 0.obs;

  void updateRole(SingingCharacter? value){
    _role.value = value;
  }

  SingingCharacter? getRole(){
    return _role.value;
  }

  Future<void> getUserInfo() async{
    try {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      DataSnapshot snapshot = await databaseRef.child('usuarios').child(uid).child('name').get();
      userName = snapshot.child('name').value as String;
      userRole = snapshot.child('role').value as String;
      userInfoState.value = 1;
      //print(userName.value);
      return Future.value();
    } catch (error) {
      return Future.error(error);
    }
  }

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

  Future<String> registerUser(String name, String email, String password, String role) async {
    HttpsCallable callable = FirebaseFunctions.instance.httpsCallable('registerUser');
    try {
      final resp = await callable.call(<String, dynamic>{
        'email': email,
        'pass': password,
        'name': name,
        'role': role,
      });
      print("Created user : ${resp.data}");
      //final Map<String, dynamic> data = Map.from(resp.data);
      return Future.value(resp.data);
      //final Map<String, dynamic> data = Map.from(message['resp.data']);
      //final Map<String, String> data = Map.from(message['resp.data']);
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

  Future<void> crearUsuarioDB(String name, String email, String role) async {
      try {
        String uid = FirebaseAuth.instance.currentUser!.uid;
        await databaseRef.child('usuarios').child(uid).set({'uid': uid, 'name': name, 'email': email, 'role': role});
        userName = name;
        userRole = role;
        return Future.value();
      } catch (error) {
      return Future.error(error);
      }
  }

}

