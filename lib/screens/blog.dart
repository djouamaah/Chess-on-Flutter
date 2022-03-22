import 'package:flutter/material.dart';

void main() => runApp(BlogWidget());

class BlogWidget extends StatefulWidget {
  @override
  _BlogWidgetState createState() => _BlogWidgetState();
}

class _BlogWidgetState extends State<BlogWidget> {
  String notificaciones = "Notificaciones";

  void _onPressAdd() {}
  void _onPressed() {}
  void _onPressedLike() {}

  @override
  _retunPage() {
    return (Container(
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Container(
                        padding: const EdgeInsets.all(1.0),
                        alignment: Alignment.centerRight,
                        child: TextField(
                            style: TextStyle(
                              fontSize: 25.0,
                              color: Color(0xff5057FE),
                            ),
                            decoration: InputDecoration(
                                contentPadding:
                                    EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
                                suffixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff5057FE),
                                ),
                                hintText: "Buscar entrada de blog",
                                border: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Color(0xff5057FE), width: 32.0),
                                    borderRadius: BorderRadius.circular(25.0)),
                                focusedBorder: OutlineInputBorder(
                                    borderSide: BorderSide(
                                        color: Colors.white, width: 32.0),
                                    borderRadius:
                                        BorderRadius.circular(25.0))))))),
            Expanded(
                flex: 1,
                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                        color: Colors.white,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              'Blog: ',
                              style: TextStyle(
                                fontSize: 25.0,
                                color: Colors.black,
                              ),
                            ),
                            BlogLists('Todos'),
                            BlogLists('Populares'),
                            BlogLists('Últimos')
                          ],
                        )))),
            Expanded(
                flex: 8,
                child: Padding(
                    padding: const EdgeInsets.all(1.0),
                    child: Container(
                        color: Colors.white,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            BlogListItems('Trampas en el ajedrez por internet',
                                'Jon Doe', 'Mar. 16, 2022'),
                            BlogListItems(
                                '¿Como hallar la maniobra ganadora en el medio...',
                                'Jon Doe',
                                'Mar. 16, 2022'),
                            BlogListItems('Lectura del Ajedrez para tontos',
                                'Jon Doe', 'Mar. 16, 2022')
                          ],
                        )))),
          ]),
    ));
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Blog ',
              textAlign: TextAlign.left,
              style: TextStyle(color: Colors.black),
            ),
            backgroundColor: Colors.white,
            actions: [
              IconButton(
                  color: Colors.black,
                  onPressed: _onPressAdd,
                  icon: Icon(Icons.playlist_add, size: 30.0))
            ],
          ),
          body: Center(
            child: _retunPage(),
          )),
    );
  }

  Widget BlogLists(number) {
    return Expanded(
      child: Padding(
          padding: const EdgeInsets.all(3),
          child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  primary: Color(0xff5057FE), onSurface: Colors.blueGrey),
              onPressed: () => {_onPressed()},
              child: Text(number.toString(), style: TextStyle(fontSize: 14)))),
    );
  }

  Widget BlogListItems(Texto, Autor, Date) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      margin: EdgeInsets.all(15),
      elevation: 10,
      color: Colors.white,
      child: Column(
        children: <Widget>[
          ListTile(
            contentPadding: EdgeInsets.fromLTRB(15, 10, 25, 0),
            title: Text(Texto),
            subtitle: Text(Autor),
            trailing: Text(Date),
            leading: Image(
              image: NetworkImage(
                  'https://media.istockphoto.com/photos/chess-game-strategy-and-decision-making-picture-id111993299?k=20&m=111993299&s=170667a&w=0&h=H99GLLtNyU1Tddx8rLQBg4MG0hzKa3JdXyLhUeHH6Y8='),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              IconButton(
                  color: Color(0xff5057FE),
                  onPressed: _onPressedLike,
                  icon: Icon(Icons.favorite_border_outlined, size: 30.0)),
            ],
          )
        ],
      ),
    );
  }
}
