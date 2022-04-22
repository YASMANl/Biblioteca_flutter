import 'package:flutter/material.dart';
import 'package:flutter_biblioteca/views/Login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Biblioteca Virtual',
        initialRoute: 'Login',
        routes: {
          'Login': (BuildContext context) => Login(),
          //'Menu': (BuildContext context) => Menu(),
          //'Datos': (BuildContext context) => Datos(),
          //'Citas': (BuildContext context) => Citas(),
          //'Tratamiento': (BuildContext context) => Tratamiento(),
          // 'Pagos': (BuildContext context) => Pagos(),
        });
  }
}