import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_ui/controllers/controller.dart';
import 'package:proyecto_ui/firebase_cental.dart';
import 'package:proyecto_ui/screens/login.dart';
import 'package:proyecto_ui/screens/register.dart';
import 'package:proyecto_ui/screens/home.dart';
import 'package:proyecto_ui/screens/home_teacher.dart';
import 'package:proyecto_ui/screens/mis_cursos.dart';
import 'package:proyecto_ui/screens/profile.dart';
import 'package:proyecto_ui/screens/play.dart';
import 'package:proyecto_ui/screens/blog.dart';

class ContentPage extends StatelessWidget {
  static const _colorPrimary = Color(0xFF4E55F7);
  static const _colorBPrimary = Color(0xFFEBEEFF);
  static const _colorSecondary = Color(0xFF1D192B);
  static const _colorBSecondary = Color(0xFF49454F);
  static const _colorNeutral = Color(0xFFECF1F7);

  final Controller c = Get.put(Controller());

  final List _children = [
    HomeTeacherWidget(),
    const AnalysisBoard(),
    BlogWidget(),
    ProfileWidget()
  ];

  void onTabTapped(int index) {
    c.updateNavIndex(index);
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() =>
      Scaffold(
        body: Column(
          children: <Widget>[Expanded(child: _children[c.getNavIndex])],
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: _colorPrimary,
          onTap: onTabTapped,
          currentIndex: c.getNavIndex,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Inicio',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.play_arrow),
              label: 'Jugar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.article),
              label: 'Blog',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Perfil',
            ),
          ],
        ),
      ),
    );
  }
}

class Wrong extends StatelessWidget {
  const Wrong({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Error"));
  }
}

class Loading extends StatelessWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(child: Text("Loading"));
  }
}