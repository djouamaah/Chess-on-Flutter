import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'account.dart';

//void main() => runApp(PasswordWidget());
class AddCourseWidget extends StatefulWidget {
  @override
  _AddCourseWidgetState createState() => _AddCourseWidgetState();
}

class _AddCourseWidgetState extends State<AddCourseWidget> {
  static const _colorPrimary = Color(0xFF4E55F7);
  //static const _colorBPrimary = Color(0xFFEBEEFF);
  static const _colorSecondary = Color(0xFF1D192B);
  static const _colorBSecondary = Color(0xFF49454F);
  static const _colorNeutral = Color.fromARGB(255, 255, 255, 255);

  String dropdownValue = 'Sala Principiantes';

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
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
                        decoration: const BoxDecoration(
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
                                      const Padding(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 5),
                                      ),
                                      Container(
                                        width: 48,
                                        height: 48,
                                        child: IconButton(
                                          icon:
                                              const Icon(Icons.arrow_back_ios),
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 15, vertical: 0),
                                          onPressed: () {
                                            Navigator.pop(context);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                            color: const Color.fromRGBO(
                                                73, 69, 79, 1),
                                            width: 1,
                                          ),
                                          borderRadius: const BorderRadius.all(
                                              Radius.elliptical(48, 48)),
                                        ),
                                      )
                                    ],
                                  ),
                                  Column(
                                    children: [
                                      Container(
                                        //padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 0),
                                        alignment: AlignmentDirectional.center,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          children: const <Widget>[
                                            Text(
                                              'Agregar Curso',
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                  color: Color.fromRGBO(
                                                      29, 25, 43, 1),
                                                  fontFamily: 'Inter',
                                                  fontSize: 28,
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
                                /*Row(
                                  children: [
                                    Container(
                                      decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(8),
                                          topRight: Radius.circular(8),
                                          bottomLeft: Radius.circular(8),
                                          bottomRight: Radius.circular(8),
                                        ),
                                        color: Color.fromRGBO(236, 241, 247, 1),
                                      ),
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 16, vertical: 16),
                                    ),
                                  ],
                                ),*/
                                const SizedBox(
                                  height: 20,
                                ),
                                const SizedBox(
                                  width: 343,
                                  height: 56,
                                  child: TextField(
                                    //controller: correoController,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        labelText: "Titulo",
                                        labelStyle:
                                            TextStyle(color: _colorBSecondary),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: _colorBSecondary),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                const SizedBox(
                                  width: 343,
                                  height: 56,
                                  child: TextField(
                                    //controller: correoController,
                                    decoration: InputDecoration(
                                        filled: true,
                                        fillColor: Colors.white,
                                        labelText: "Descripción",
                                        labelStyle:
                                            TextStyle(color: _colorBSecondary),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                              color: _colorBSecondary),
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                        ),
                                        border: OutlineInputBorder(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(12)),
                                        )),
                                  ),
                                ),
                                const SizedBox(
                                  height: 16,
                                ),
                                DropdownButton<String>(
                                  value: dropdownValue,
                                  icon: const Icon(Icons.keyboard_arrow_down),
                                  elevation: 16,
                                  //style:const TextStyle(color: Colors.deepPurple),
                                  /*underline: Container(
                                    height: 2,
                                    color: Colors.deepPurpleAccent,
                                  ),*/
                                  onChanged: (String? newValue) {
                                    setState(() {
                                      dropdownValue = newValue!;
                                    });
                                  },
                                  items: <String>['Sala Principiantes', 'Sala Intermedios', 'Sala Expertos']
                                      .map<DropdownMenuItem<String>>(
                                          (String value) {
                                    return DropdownMenuItem<String>(
                                      value: value,
                                      child: Text(value),
                                    );
                                  }).toList(),
                                ),
                                Container(
                                  padding: const EdgeInsets.all(1.0),
                                  decoration: const BoxDecoration(
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
                                        minWidth: 40,
                                        height: 50,
                                        child: const Text(
                                          'Crear curso',
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                              color: Color.fromRGBO(
                                                  255, 255, 255, 1),
                                              fontFamily: 'Inter',
                                              fontSize: 18,
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
      )),
    );
  }

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
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      topRight: Radius.circular(12),
                      bottomLeft: Radius.circular(12),
                      bottomRight: Radius.circular(12),
                    ),
                    color: const Color.fromRGBO(255, 255, 255, 1),
                    border: Border.all(
                      color: const Color.fromRGBO(73, 69, 79, 1),
                      width: 1,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: TextField(
                      style: const TextStyle(
                          color: Color.fromRGBO(73, 69, 79, 1),
                          fontFamily: 'Inter',
                          fontSize: 18,
                          letterSpacing: 0,
                          fontWeight: FontWeight.bold,
                          height: 1.5),
                      obscureText: true,
                      decoration: InputDecoration(
                        border: const OutlineInputBorder(),
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
}
