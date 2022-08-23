import 'dart:html';

import 'package:flutter/material.dart';
import 'package:fluttercolumnasfilas/constantes/const.dart';

void main() {
  runApp(const FilaCol());
}

class FilaCol extends StatelessWidget {
  const FilaCol({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Filas y columnas",
      home: filacol(),
      theme: ThemeData(primarySwatch: Colors.green),
    );
  }
}

class filacol extends StatefulWidget {
  filacol({Key? key}) : super(key: key);

  @override
  State<filacol> createState() => _filacolState();
}

class _filacolState extends State<filacol> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(titulo),
        ),
        body: fondo()

        /*Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width,
            child: Text(
              "Valor 1",
              textAlign: TextAlign.center,
            ),
          ),
          Icon(Icons.add_call),
          Text(
            "Llamada",
            textAlign: TextAlign.center,
          )
        ],
      ),*/
        );
  }
}

Widget fondo() {
  return Container(
    decoration: BoxDecoration(
        image: DecorationImage(
            opacity: 60,
            fit: BoxFit.cover,
            image: NetworkImage(
                "https://nebulae-assets.s3.amazonaws.com/3b56d17152bd46c295797a7eaab1f244.jpg"))),
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          nombre(),
          registroUsuario(),
          registroPass(),
          btnIngresar(),
          opData()
        ],
      ),
    ),
  );
}

Widget nombre() {
  return Text("Iniciar Sesion",
      style: TextStyle(color: Colors.blueGrey, fontSize: 30.0));
}

Widget registroUsuario() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      decoration: InputDecoration(
          hintText: "Ingrese su nombre",
          fillColor: Colors.blueAccent,
          filled: true),
    ),
  );
}

Widget registroPass() {
  return Container(
    padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
    child: TextField(
      obscureText: true,
      decoration: InputDecoration(
          hintText: "Ingrese su Password",
          fillColor: Colors.blueAccent,
          filled: true),
    ),
  );
}

Widget btnIngresar() {
  return ElevatedButton.icon(
      onPressed: () {},
      icon: Icon(Icons.enhance_photo_translate),
      label: Text("Ingresar"));
}

Widget opData() {
  return Text("Hola");
}

OptionElement btnRol() {
  return OptionElement();
}
