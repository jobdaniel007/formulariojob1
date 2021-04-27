import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

@override
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "formajob",
      theme: ThemeData(
          primarySwatch: Colors.orange,
          visualDensity: VisualDensity.adaptivePlatformDensity),
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Text(
                "Contactos",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(top: 5, bottom: 5,),
                child: Text(
                  "Correo: ",
                  style: TextStyle(fontWeight: FontWeight.w300, fontSize: 16),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Telefono",
                style: TextStyle(fontWeight: FontWeight.w100, fontSize: 16),
              ),
              TextField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Text(
                "Mensajes:",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              ),
              TextField(
                maxLines: 9,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Enviar copia al usario",
                    style: TextStyle(fontWeight: FontWeight.w500),
                  ),
                ],
              ),
              Row(
                children: <Widget>[
                  Checkbox(
                    value: false,
                  ),
                  Text(
                    "Suscribirse al boletin",
                    style: TextStyle(fontWeight: FontWeight.w500,),
                  ),
                ],
              ),
              RaisedButton(
                onPressed: () {},
                color: Colors.redAccent,
                textColor: Colors.black,
                child: Text(
                  "Send",
                  style: TextStyle(fontSize: 14,
                    height: 1,
                  ),
                ),
                padding: const EdgeInsets.all(20.0),
              ),
              Text("(Campos requeridos)",
                style: TextStyle(fontSize: 12,
                  fontWeight: FontWeight.normal,),
              ),
            ],
          ),
        ),
      ),
    );
  }
}