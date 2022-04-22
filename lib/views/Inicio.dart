
import 'package:flutter/material.dart';


class Inicio extends StatefulWidget {
  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BIENVENIDOS '),
        backgroundColor: Color(0xFFD80D00),
      ),
      body: Center(),
    );
  }
}
