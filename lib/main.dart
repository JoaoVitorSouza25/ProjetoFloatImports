import 'package:flutter/material.dart';
import 'package:appfloat/model/drawer.dart';

//teste1aaaaaaaaaaaaa
void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Contatos',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Minha aplicação'),
        ),
        body: Center(
          child: Text('Corpo da minha aplicação'),
        ),
        drawer: Drawerr(),
      ),
    ),
  );
}
