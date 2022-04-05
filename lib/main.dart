import 'package:flutter/material.dart';
import 'package:proyecto_ui/screens/login.dart';
import 'package:proyecto_ui/screens/register.dart';
import 'package:proyecto_ui/screens/home.dart';
import 'package:proyecto_ui/screens/home_teacher.dart';
import 'package:proyecto_ui/screens/mis_cursos.dart';
import 'package:proyecto_ui/screens/profile.dart';
import 'package:proyecto_ui/screens/play.dart';
import 'package:proyecto_ui/screens/blog.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: "MyApp"),
      //home: LoginWidget()
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  static const _colorPrimary = Color(0xFF4E55F7);
  static const _colorBPrimary = Color(0xFFEBEEFF);
  static const _colorSecondary = Color(0xFF1D192B);
  static const _colorBSecondary = Color(0xFF49454F);
  static const _colorNeutral = Color(0xFFECF1F7);
  int _currentIndex = 0;
  //int _currentIndex = 3;
  final List _children = [
    HomeTeacherWidget(),
    AnalysisBoard(),
    BlogWidget(),
    ProfileWidget()
  ];

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[Expanded(child: _children[_currentIndex])],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: _colorPrimary,
        onTap: onTabTapped,
        currentIndex: _currentIndex,
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
    );
  }
}
