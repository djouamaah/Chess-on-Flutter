import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'password.dart';
void main() => runApp(AccountWidget());
class AccountWidget extends StatefulWidget {
  @override
  _AccountWidgetState createState() => _AccountWidgetState();
}

class _AccountWidgetState extends State<AccountWidget> {
  @override
  Widget build(BuildContext context) {
// Figma Flutter Generator AccountWidget - FRAME
    String name = "John Doe";
    String nombre = "Nombre";
    String birthday = "21/12/2012";
    String cumpleanos = "Fecha de cumpleaños";
    String email = "John@doe.com";
    String correo = "Email";
    String password = "**********";
    String contrasena = "Contraseña";
    String direction = "Km. 5 Puerto Colombia";
    String direccion = "Dirección";



    Widget box_info(String info, String description, Widget bt) {
      if (description == "Contraseña") {
        return Container(
            decoration: BoxDecoration(
              color: Color.fromRGBO(236, 241, 247, 1),
            ),
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
                //crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16),
                      ),
                      color: Color.fromRGBO(255, 255, 255, 1),
                      border: Border.all(
                        color: Color.fromRGBO(73, 69, 79, 1),
                        width: 1,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
                    child: Row(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Row(
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Container(
                                  width: 48,
                                  height: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.only(
                                      topLeft: Radius.circular(20),
                                      topRight: Radius.circular(20),
                                      bottomLeft: Radius.circular(20),
                                      bottomRight: Radius.circular(20),
                                    ),
                                    color: Color.fromRGBO(235, 238, 255, 1),
                                  ),
                                  child: Stack(children: <Widget>[
                                    Positioned(
                                      top: 5,
                                      left: 5,
                                      child: bt,
                                    ),
                                  ])),
                              SizedBox(width: 10),
                              Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 0),
                                child: Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            info,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    29, 25, 43, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 20,
                                                letterSpacing: -0.5,
                                                fontWeight: FontWeight.normal,
                                                height: 1.3),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 0),
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            description,
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    73, 69, 79, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 14,
                                                letterSpacing: 0,
                                                fontWeight: FontWeight.normal,
                                                height: 1.5),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ]));
      }

      return Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(236, 241, 247, 1),
          ),
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: <
                  Widget>[
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  topRight: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                  bottomRight: Radius.circular(16),
                ),
                color: Color.fromRGBO(255, 255, 255, 1),
                border: Border.all(
                  color: Color.fromRGBO(73, 69, 79, 1),
                  width: 1,
                ),
              ),
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Container(
                            width: 48,
                            height: 48,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(20),
                                topRight: Radius.circular(20),
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Color.fromRGBO(235, 238, 255, 1),
                            ),
                            child: Stack(children: <Widget>[
                              Positioned(
                                top: 5,
                                left: 5,
                                child: bt,
                              ),
                            ])),
                        SizedBox(width: 10),
                        Container(
                          decoration: BoxDecoration(),
                          padding:
                              EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    info,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(29, 25, 43, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 20,
                                        letterSpacing: -0.5,
                                        fontWeight: FontWeight.normal,
                                        height: 1.3),
                                  ),
                                ],
                              ),
                              SizedBox(height: 0),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    description,
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                        color: Color.fromRGBO(73, 69, 79, 1),
                                        fontFamily: 'Inter',
                                        fontSize: 14,
                                        letterSpacing: 0,
                                        fontWeight: FontWeight.normal,
                                        height: 1.5),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]));
    }

    return MaterialApp(
      home: Scaffold(
            body: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Column(
            children: [
              Expanded(
                child: Align(
                  alignment: AlignmentDirectional.center,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(236, 241, 247, 1),
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(children: [
                            Row(
                              children: [
                                Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 40, vertical: 5),
                                    ),
                                    Container(
                                      width: 48,
                                      height: 48,
                                      child: IconButton(
                                        icon: Icon(Icons.arrow_back_ios),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 15, vertical: 0),
                                        onPressed: () {},
                                      ),
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                          color: Color.fromRGBO(73, 69, 79, 1),
                                          width: 1,
                                        ),
                                        borderRadius: BorderRadius.all(
                                            Radius.elliptical(48, 48)),
                                      ),
                                    )
                                  ],
                                ),
                                Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 0),
                                      alignment: AlignmentDirectional.center,
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          Text(
                                            'Cuenta',
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                                color: Color.fromRGBO(
                                                    29, 25, 43, 1),
                                                fontFamily: 'Inter',
                                                fontSize: 32,
                                                letterSpacing: -1,
                                                fontWeight: FontWeight.bold,
                                                height: 1.3125),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    box_info(
                                        name,
                                        nombre,
                                        IconButton(
                                          icon: Icon(Icons.person),
                                          color: Color.fromRGBO(80, 87, 254, 1),
                                          padding: const EdgeInsets.all(0.0),
                                          onPressed: () {},
                                        )),
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    box_info(
                                      email,
                                      correo,
                                      IconButton(
                                        icon: Icon(Icons.mail),
                                        color: Color.fromRGBO(80, 87, 254, 1),
                                        padding: const EdgeInsets.all(0.0),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    box_info(
                                      password,
                                      contrasena,
                                      IconButton(
                                        icon: Icon(Icons.lock),
                                        color: Color.fromRGBO(80, 87, 254, 1),
                                        padding: const EdgeInsets.all(0.0),
                                        onPressed: () {
                                          //Navigator.of(context).pushNamed('/password');
                                        },
                                      ),
                                    ),
                                  ],
                                )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Row(
                                      children: [
                                        IconButton(
                                          icon: Icon(Icons.arrow_forward_ios),
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 10, vertical: 0),
                                          onPressed: () {
                                            //Navigator.of(context).pushNamed('/password');
                                          },
                                        ),
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    box_info(
                                      birthday,
                                      cumpleanos,
                                      IconButton(
                                        icon: Icon(Icons.cake),
                                        color: Color.fromRGBO(80, 87, 254, 1),
                                        padding: const EdgeInsets.all(0.0),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    box_info(
                                      direction,
                                      direccion,
                                      IconButton(
                                        icon: Icon(Icons.fmd_good_sharp),
                                        color: Color.fromRGBO(80, 87, 254, 1),
                                        padding: const EdgeInsets.all(0.0),
                                        onPressed: () {},
                                      ),
                                    )
                                  ],
                                ))
                              ],
                            ),
                            Row(
                              children: [
                                Expanded(
                                    child: Column(
                                  children: [
                                    Container(
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 1, vertical: 0),
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(16),
                                          topRight: Radius.circular(16),
                                          bottomLeft: Radius.circular(16),
                                          bottomRight: Radius.circular(16),
                                        ),
                                        color: Color.fromRGBO(80, 87, 254, 1),
                                      ),
                                      child: Row(
                                        mainAxisSize: MainAxisSize.min,
                                        children: <Widget>[
                                          MaterialButton(
                                            minWidth: 45,
                                            height: 60,
                                            child: Text(
                                              'Actualizar perfil',
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      255, 255, 255, 1),
                                                  fontFamily: 'Inter',
                                                  fontSize: 25,
                                                  letterSpacing: 0,
                                                  fontWeight: FontWeight.normal,
                                                  height: 1.125),
                                            ),
                                            onPressed: () {},
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ))
                              ],
                            ),
                          ]),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    )),
    );

    
  }
}
