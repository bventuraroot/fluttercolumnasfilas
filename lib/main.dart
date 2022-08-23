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
      theme: ThemeData(primarySwatch: Colors.deepPurple),
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
            fit: BoxFit.fill,
            image: NetworkImage(
                "https://nebulae-assets.s3.amazonaws.com/3b56d17152bd46c295797a7eaab1f244.jpg"))),
    child: Center(
      child: Column(
        children: <Widget>[nombre()],
      ),
    ),
  );
}

Widget nombre() {
  return Text("Iniciar Sesion",
      style: TextStyle(color: Colors.blue, fontSize: 30.0));
}
