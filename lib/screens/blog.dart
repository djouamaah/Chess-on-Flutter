import 'package:flutter/material.dart';
import 'package:proyecto_ui/models/blog_item.dart';
import '../models/curso.dart';

class BlogWidget extends StatelessWidget {
  List<BlogItem> entries = <BlogItem>[
    BlogItem(0, 'Trampas en el ajedrez por internet', 'John Doe',
        'Mar. 18, 2022'),
    BlogItem(1, '¿Como hallar la maniobra ganadora en el medio...', 'Will Smith',
        'Mar. 15, 2022'),
        BlogItem(2, 'Lectura de ajedrez para principiantes', 'John Doe',
        'Mar. 14, 2022'),
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
                    children: const [
                      Text(
                        'Blog',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(73, 69, 79, 1),
                            fontFamily: 'Inter',
                            fontSize: 26,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.bold,
                            height: 1.3),
                      ),
                      Text(
                        'Comparte tus conocimientos',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                            color: Color.fromRGBO(73, 69, 79, 1),
                            fontFamily: 'Inter',
                            fontSize: 15,
                            letterSpacing: -0.5,
                            fontWeight: FontWeight.normal,
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
                  icon: const Icon(Icons.post_add),
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
        Padding(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: Row(
            children: [
              const Text(
                'Cursos:',
                textAlign: TextAlign.left,
                style: TextStyle(
                    color: Color.fromRGBO(73, 69, 79, 1),
                    fontFamily: 'Inter',
                    fontSize: 15,
                    letterSpacing: -0.5,
                    fontWeight: FontWeight.normal,
                    height: 1.3),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(80, 87, 254, 1),
                  ),
                  child: const Text(
                    'Todos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        letterSpacing: -0.5,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(80, 87, 254, 1),
                  ),
                  child: const Text(
                    'Populares',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        letterSpacing: -0.5,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  padding: const EdgeInsets.only(
                      top: 8.0, bottom: 8.0, left: 10, right: 10),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    color: Color.fromRGBO(80, 87, 254, 1),
                  ),
                  child: const Text(
                    'Últimos',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontFamily: 'Inter',
                        fontSize: 15,
                        letterSpacing: -0.5,
                        fontWeight: FontWeight.normal,
                        height: 1.3),
                  ),
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
              padding: const EdgeInsets.all(8),
              itemCount: entries.length,
              itemBuilder: (context, index) {
                return _row(entries[index], index);
              }),
        )
      ]),
    );
  }

  Widget _row(BlogItem item, int index) {
    return _card(item, index);
  }

  Widget _card(BlogItem item, int index) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.only(top: 8.0, bottom: 8.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: Container(
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
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(18),
                    child: SizedBox(
                      height: 70,
                      width: 70,
                      child: Stack(fit: StackFit.expand, children: [
                        Image.asset(
                          'assets/images/Ajedrez.png',
                          height: 200,
                          fit: BoxFit.cover,
                        ),
                      ]),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          item.name,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 16,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.bold,
                              height: 1.3),
                        ),
                        Text(
                          item.auth,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromARGB(255, 0, 0, 0),
                              fontFamily: 'Inter',
                              fontSize: 14,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3),
                        ),
                        Text(
                          item.date,
                          textAlign: TextAlign.left,
                          style: const TextStyle(
                              color: Color.fromRGBO(73, 69, 79, 1),
                              fontFamily: 'Inter',
                              fontSize: 12,
                              letterSpacing: -0.5,
                              fontWeight: FontWeight.normal,
                              height: 1.3),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 48,
                  height: 48,
                  child: IconButton(
                    icon: const Icon(Icons.favorite_border),
                    padding:
                        const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    onPressed: () {},
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
