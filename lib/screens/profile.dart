import 'package:flutter/material.dart';
import 'package:proyecto_ui/screens/account.dart';
import 'package:proyecto_ui/screens/configuration.dart';
import 'package:proyecto_ui/screens/login.dart';
import 'package:proyecto_ui/screens/mis_cursos.dart';

class ProfileWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Figma Flutter Generator ProfileWidget - FRAME
    return Container(
      decoration: const BoxDecoration(
        color: Color.fromRGBO(236, 241, 247, 1),
      ),
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(children: [
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8.0),
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
                    Container(
                        width: 50,
                        height: 50,
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
                            size: const Size.fromRadius(20),
                            child: Image.asset('../assets/images/Image1.png'),
                          ),
                        )),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: const <Widget>[
                          Flexible(
                            flex: 1,
                            child: Text(
                              'Bienvenido',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(73, 69, 79, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 16,
                                  letterSpacing: -0.5,
                                  fontWeight: FontWeight.normal,
                                  height: 1.3),
                            ),
                          ),
                          Flexible(
                            flex: 1,
                            child: Text(
                              'John Doe',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                  color: Color.fromRGBO(29, 25, 43, 1),
                                  fontFamily: 'Inter',
                                  fontSize: 18,
                                  letterSpacing: 0,
                                  fontWeight: FontWeight.bold,
                                  height: 1.5),
                            ),
                          ),
                        ],
                      ),
                    ),
                    InkWell(
                      onTap: () => {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => LoginWidget()),
                        )
                      },
                      child: Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(child: Image.asset('../assets/images/logout.png', height: 20, width: 20,)),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ]),
        ),
        SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AccountWidget()),
                );
              },
            child: Row(children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(235, 238, 255, 1)),
                          child: Center(child: Image.asset('../assets/images/user.png', width: 20 , height: 20,))),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Cuenta',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 25, 43, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    //fontWeight: FontWeight.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Configura los datos de tu cuenta',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(73, 69, 79, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(child: Image.asset('../assets/images/right-arrow.png', height: 20, width: 20,)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MisCursosWidget()),
                );
              },
            child: Row(children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(235, 238, 255, 1)),
                          child: Center(child: Image.asset('../assets/images/files-copy.png', width: 20 , height: 20,))),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Mis Cursos',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 25, 43, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    //fontWeight: FontWeight.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Gestiona tus cursos y salas',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(73, 69, 79, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(child: Image.asset('../assets/images/right-arrow.png', height: 20, width: 20,)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsWidget()),
                );
              },
            child: Row(children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(235, 238, 255, 1)),
                          child: Center(child: Image.asset('../assets/images/gear.png', width: 20 , height: 20,))),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Configuración',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 25, 43, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    //fontWeight: FontWeight.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Gestiona la aplicación',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(73, 69, 79, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(child: Image.asset('../assets/images/right-arrow.png', height: 20, width: 20,)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginWidget()),
                );
              },
            child: Row(children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(8.0),
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
                      Container(
                          width: 50,
                          height: 50,
                          decoration: const BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(235, 238, 255, 1)),
                          child: Center(child: Image.asset('../assets/images/question.png', width: 20 , height: 20,))),
                      const SizedBox(width: 20),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisSize: MainAxisSize.min,
                          children: const <Widget>[
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Acerca de',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(29, 25, 43, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 18,
                                    letterSpacing: -0.5,
                                    //fontWeight: FontWeight.normal,
                                    fontWeight: FontWeight.bold,
                                    height: 1.3),
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: Text(
                                'Conocenos un poco más',
                                textAlign: TextAlign.left,
                                style: TextStyle(
                                    color: Color.fromRGBO(73, 69, 79, 1),
                                    fontFamily: 'Inter',
                                    fontSize: 14,
                                    letterSpacing: 0,
                                    fontWeight: FontWeight.normal,
                                    height: 1.5),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Center(child: Image.asset('../assets/images/right-arrow.png', height: 20, width: 20,)),
                      ),
                    ],
                  ),
                ),
              )
            ]),
          ),
        ),
      ]),
    );
  }

}
