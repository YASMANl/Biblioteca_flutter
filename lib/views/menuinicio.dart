
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData.dark(),
        home: Container(
            child: Scaffold(
              appBar: AppBar(
                title: Row(
                  mainAxisSize: MainAxisSize.min, //centrado
                  children: <Widget>[
                    Icon(Icons.wb_cloudy),
                    SizedBox(width: 8.0),
                    Text("Inicio"),
                  ],
                ),
              ),
              body: HomePage(),
            )
        )
    );
  }
}


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        header(),
        list(),
      ],
    );
  }


  Widget header(){
    return Stack(
      children: <Widget>[
        Container(
            height: 100.0,
            width: double.infinity, //all width
            child: Image.network('http://www.libropatas.com/wp-content/uploads/2014/10/dia-de-las-bibliotecas.jpg',
              fit: BoxFit.cover,
            )
        ),
        Container(
          height: 100.0,
          width: double.infinity,
          color: Colors.black38,
        ),
        Positioned(
            left: 16.0,
            top: 16.0,
            child: Text(
              'Biblioteca',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
            )
        ),
        Positioned(
          right: 8.0,
          bottom: 8.0,
          child: Text('Menu Principal',
            style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        )
      ],
    );
  }

  Widget list(){
    return Padding(
      padding: const EdgeInsets.all(28.0),
      child: Column(
        children: <Widget>[
          menuWidget('Busqueda Avanzada    ', Icons.add),
          menuWidget('Recomendaciones         ', Icons.add),
          menuWidget('Mi Lista                   ', Icons.add),
          menuWidget('Genero ', Icons.add),
      ],
      ),
    );
  }

  Widget menuWidget(String gen, IconData icon){
    return Card(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(gen),
              Icon(icon)              
            ],
          ),
        )
    );
  }
}



