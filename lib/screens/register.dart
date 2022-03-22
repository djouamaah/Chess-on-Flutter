import 'package:flutter/material.dart';

class RegisterWidget extends StatefulWidget {
  const RegisterWidget({Key? key}) : super(key: key);

  @override
  _RegisterWidgetState createState() => _RegisterWidgetState();
}

class _RegisterWidgetState extends State<RegisterWidget> {
  static const _colorPrimary = Color(0xFF4E55F7);
  static const _colorBPrimary = Color(0xFFEBEEFF);
  static const _colorSecondary = Color(0xFF1D192B);
  static const _colorBSecondary = Color(0xFF49454F);
  static const _colorNeutral = Color(0xFFECF1F7);
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
              child: const TextField(
                decoration: InputDecoration(
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
              child: const TextField(
                decoration: InputDecoration(
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
              child: const TextField(
                decoration: InputDecoration(
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
                  onPressed: click,
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
}
