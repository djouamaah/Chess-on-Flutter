import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_ui/firebase_cental.dart';
import 'package:proyecto_ui/screens/content_page.dart';
import 'package:proyecto_ui/screens/login.dart';
import 'package:proyecto_ui/screens/register.dart';
import 'package:proyecto_ui/screens/home.dart';
import 'package:proyecto_ui/screens/home_teacher.dart';
import 'package:proyecto_ui/screens/mis_cursos.dart';
import 'package:proyecto_ui/screens/profile.dart';
import 'package:proyecto_ui/screens/play.dart';
import 'package:proyecto_ui/screens/blog.dart';

import 'controllers/authentication_controller.dart';
import 'controllers/controller.dart';
import 'controllers/location_controller.dart';
import 'firebase_options.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    Get.put(AuthenticationController());
    Get.put(Controller());
    Get.put(LocationController());

    final Future<FirebaseApp> _init = Firebase.initializeApp(
      options: DefaultFirebaseOptions.currentPlatform,
    );

    return GetMaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: SafeArea(
          child: Scaffold(
              body: FutureBuilder(
                  future: _init,
                  builder: (context, snapshot) {
                    if (snapshot.hasError) {
                      return const Wrong();
                    }

                    if (snapshot.connectionState == ConnectionState.done) {
                      if (FirebaseAuth.instance.currentUser != null) {
                        return ContentPage();
                      } else {
                        return LoginWidget();
                      }

                      //return const FirebaseCentral();
                    }

                    return const Loading();
                  })),
        ));
  }
}

class Wrong extends StatelessWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Error")),
    );
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(child: Text("Loading")),
    );
  }
}
