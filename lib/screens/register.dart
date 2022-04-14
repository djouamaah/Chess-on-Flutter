import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_ui/controllers/authentication_controller.dart';
import 'package:proyecto_ui/screens/content_page.dart';

import 'login.dart';

class RegisterWidget extends StatelessWidget {
  static const _colorPrimary = Color(0xFF4E55F7);
  static const _colorBPrimary = Color(0xFFEBEEFF);
  static const _colorSecondary = Color(0xFF1D192B);
  static const _colorBSecondary = Color(0xFF49454F);
  static const _colorNeutral = Color(0xFFECF1F7);

  AuthenticationController authenticationController = Get.find();

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passController = TextEditingController();

  void click() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
          child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(color: _colorNeutral),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30,
            ),
            const Text(
              "Registrarse",
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 16,
            ),
            const Text(
              "Crea tu cuenta",
              style: TextStyle(
                  color: _colorSecondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 343,
              height: 56,
              child: TextField(
                controller: nameController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Nombre",
                    labelStyle: TextStyle(color: _colorBSecondary),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _colorBSecondary),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 343,
              height: 56,
              child: TextField(
                controller: emailController,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Correo",
                    labelStyle: TextStyle(color: _colorBSecondary),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _colorBSecondary),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Container(
              width: 343,
              height: 56,
              child: TextField(
                controller: passController,
                decoration: const InputDecoration(
                    suffix: Icon(
                      Icons.visibility,
                      color: _colorBSecondary,
                    ),
                    filled: true,
                    fillColor: Colors.white,
                    labelText: "Contraseña",
                    labelStyle: TextStyle(color: _colorBSecondary),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: _colorBSecondary),
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    ),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                    )),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            GestureDetector(
              onTap: () => clickRegistrarse(context),
              child: Container(
                alignment: Alignment.center,
                width: 343,
                height: 56,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(12)),
                    color: _colorPrimary),
                child: const Padding(
                  padding: EdgeInsets.all(12.0),
                  child: Text(
                    'Registrarse',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => LoginWidget()),
                    );
                  },
                  child: const Text('Iniciar sesión',
                      style: TextStyle(
                          color: _colorSecondary,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                )
              ],
            ),
          ],
        ),
      )),
    );
  }

  void clickRegistrarse(BuildContext context) {
    /*authenticationController.login('donny@mail.com', '123456').then((value) {
      
    });*/

    String email = emailController.text;
    String pass = passController.text;
    String name = nameController.text;

    bool emailValid = RegExp(
            r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(email);
    if (emailValid && pass.length > 5 && name.isNotEmpty) {
      authenticationController.registerUser(name, email, pass).then((value) {
        print("llega aca 1");
        if (value == "true") {
          print("llega aca 2");
          authenticationController.login(email, pass).then((value) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (context) => ContentPage()),
            );
          });
        } else {
          print("llega aca 3");
          ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            content: Text("Sign up Error"),
          ));
        }
      }).catchError((e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text(e.toString()),
        ));
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text("Invalid Email or Password"),
      ));
    }
  }
}
