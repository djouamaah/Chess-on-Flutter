import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyecto_ui/controllers/authentication_controller.dart';
import '../models/curso.dart';

class HomeStudentWidget extends StatelessWidget {

  AuthenticationController authenticationController = Get.find();

  List<Curso> entries = <Curso>[
    Curso(0, 'Ajedrez para principiantes', '3 h 30 min',
        'Paso a paso para principiantes'),
    Curso(0, 'Ajedrez para principiantes', '3 h 30 min',
        'Paso a paso para principiantes')
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(236, 241, 247, 1),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Hola',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(73, 69, 79, 1),
                            fontFamily: 'Inter',
                            fontSize: 15,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                      Text(
                        //'John Doe',
                        authenticationController.getUserDisplayName(),
                        textAlign: TextAlign.left,
                        style: const TextStyle(
                            color: Color.fromRGBO(73, 69, 79, 1),
                            fontFamily: 'Inter',
                            fontSize: 26,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: 48,
                height: 48,
                child: IconButton(
                  icon: const Icon(Icons.notifications),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                  onPressed: () {},
                ),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color.fromRGBO(73, 69, 79, 1),
                    width: 1,
                  ),
                  borderRadius:
                      const BorderRadius.all(Radius.elliptical(48, 48)),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Expanded(
            child: Container(
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: const Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: const Color.fromRGBO(73, 69, 79, 1),
                  width: 1,
                ),
              ),
              child: Row(
                //mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  const SizedBox(width: 20),
                  const Expanded(
                    child: Text(
                      'Buscar dentro de tus cursos',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromRGBO(73, 69, 79, 1),
                          fontFamily: 'Inter',
                          fontSize: 15,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.normal,
                          height: 1.3),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Center(
                        child: Image.asset(
                      'assets/images/search.png',
                      height: 20,
                      width: 20,
                    )),
                  ),
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Row(children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                padding: const EdgeInsets.all(12.0),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                  color: const Color.fromRGBO(255, 255, 255, 1),
                  border: Border.all(
                    color: const Color.fromRGBO(73, 69, 79, 1),
                    width: 1,
                  ),
                ),
                child: Column(
                  //mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    const Text(
                      'Crea salas o cursos para tus estudiantes',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontFamily: 'Inter',
                          fontSize: 22,
                          letterSpacing: -0.5,
                          fontWeight: FontWeight.bold,
                          height: 1.3),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Text(
                        'Ayuda a mejorar sus habilidades y técnicas',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(73, 69, 79, 1),
                            fontFamily: 'Inter',
                            fontSize: 15,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.normal,
                            height: 1.3),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                        padding: const EdgeInsets.only(left: 8.0, right: 12.0),
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(20),
                            topRight: Radius.circular(20),
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          ),
                          color: Color.fromRGBO(80, 87, 254, 1),
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              icon: const Icon(Icons.add),
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 0, vertical: 0),
                              color: const Color.fromARGB(255, 255, 255, 255),
                              onPressed: () {},
                            ),
                            const Text(
                              'Crear sala',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  fontFamily: 'Inter',
                                  fontSize: 15,
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3),
                            ),
                          ],
                        )),
                  ],
                ),
              ),
            ),
          ),
        ]),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: const [
              Expanded(
                child: Text(
                  'Salas creadas',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontFamily: 'Inter',
                      fontSize: 16,
                      letterSpacing: -0.5,
                      fontWeight: FontWeight.bold,
                      height: 1.3),
                ),
              ),
              Text(
                'Ver todo',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromARGB(255, 0, 0, 0),
                    fontFamily: 'Inter',
                    fontSize: 15,
                    letterSpacing: -0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.3),
              ),
            ],
          ),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color.fromRGBO(235, 238, 255, 1)),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(18),
                        child: Image.asset('assets/images/Ajedrez.png'),
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ajedrez para principiantes',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.bold,
                              height: 1.3),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Curso completo de Ajedrez',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 15,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 8.0),
          child: Divider(color: Color.fromRGBO(73, 69, 79, 1)),
        ),
        Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Container(
                    width: 70,
                    height: 70,
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                          bottomRight: Radius.circular(20),
                        ),
                        color: Color.fromRGBO(235, 238, 255, 1)),
                    child: ClipOval(
                      child: SizedBox.fromSize(
                        size: const Size.fromRadius(18),
                        child: Image.asset('assets/images/Ajedrez.png'),
                      ),
                    )),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Ajedrez para principiantes',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.bold,
                              height: 1.3),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Curso completo de Ajedrez',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 15,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            )),
        const Padding(
          padding: EdgeInsets.only(left: 20.0, right: 8.0),
          child: Divider(color: Color.fromRGBO(73, 69, 79, 1)),
        )
      ]),
    );
  }

}
