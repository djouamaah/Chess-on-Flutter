
import 'package:firebase_database/firebase_database.dart';
import 'package:get/get.dart';
import 'package:proyecto_ui/models/curso.dart';

class FirebaseController extends GetxController{
  
  final databaseRef = FirebaseDatabase.instance.ref();

  RxList<Curso> cursosList = <Curso>[].obs;
  
  //RxList users = [].obs;

  /*Future<void> saveUserOnDatabase(String? email, String? password) async {
      String uid = FirebaseAuth.instance.currentUser!.uid;
      String? email = FirebaseAuth.instance.currentUser!.email;
      try {
      databaseRef.child('users').child(uid).set({'email': email, 'uid': uid});//.push()
      } catch (error) {
      logError(error);
      return Future.error(error);
      }
  }*/

  Future<void> getCoursesListByTeacherId(String id) async {
      try {
        //final snapshot = await databaseRef.child('cursos').orderByChild("teacher_id").equalTo(id).get();
        final snapshot = await databaseRef.child('cursos').get();
        List<Curso> cursos = [];

        for (var element in snapshot.children) {

          Curso curso = Curso(0,
          element.child('name').value as String,
          element.child('time').value != null ? element.child('time').value as String : "",
          element.child('desc').value as String);

          cursos.add(curso);
        }

        cursosList.clear();
        cursosList.addAll(cursos);
        print(cursosList);
        return Future.value();

      } catch (error) {
        //print("LLega aca error: "+ error.toString());
      return Future.error(error);
      }
  }

  Future<void> addCourse(Map<String, dynamic> curso) async{
    print("LLega 1");
      try {
        //final snapshot = await databaseRef.child('cursos').orderByChild("teacher_id").equalTo(id).get();

        //Map<String, String> curso = {'titulo': titulo, 'desc': desc, 'room': room};

        await databaseRef.child('cursos').push().set(curso);
        print('Publicar curso: Exitoso');
        return Future.value();

      } catch (error) {
      print("LLega aca error: "+ error.toString());
      return Future.error(error);
      }
  }

}