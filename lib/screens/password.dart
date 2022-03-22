import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'account.dart';
void main() => runApp(PasswordWidget());
class PasswordWidget extends StatefulWidget {
  @override
  _PasswordWidgetState createState() => _PasswordWidgetState();
}

class _PasswordWidgetState extends State<PasswordWidget> {
  @override
  Widget textfiel(String messag) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(children: [
              Container(
                  padding: const EdgeInsets.all(10.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: Color.fromRGBO(73, 69, 79, 1),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextField(
                      style: TextStyle(
                          color: Color.fromRGBO(73, 69, 79, 1),
                          fontFamily: 'Inter',
                          fontSize: 25,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: messag,
                      ),
                    ),
                  )),
            ]),
          )
        ],
      ),
    );
  }

  Widget build(BuildContext context) {
    // Figma Flutter Generator PasswordWidget - FRAME

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
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                              child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(children: [
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
                                        onPressed: () {
                                          //Navigator.of(context).pushNamed('/account');
                                        },
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
                                            'Contraseña',
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
                                ),
                              ]),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8),
                                        bottomLeft: Radius.circular(8),
                                        bottomRight: Radius.circular(8),
                                      ),
                                      color: Color.fromRGBO(236, 241, 247, 1),
                                    ),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 16, vertical: 16),
                                  ),
                                ],
                              ),
                              textfiel("Contraseña actual"),
                              textfiel("Nueva contraseña"),
                              textfiel("Confirma nueva contraseña"),
                              Container(
                                padding: const EdgeInsets.all(1.0),
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
                                        'Actualizar contraseña',
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
                    )),
              ),
            ],
          ),
        ),
      ],
    )));
  }
}
