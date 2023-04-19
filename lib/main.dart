import 'package:flutter/material.dart';
import 'package:appfloat/model/drawer.dart';
import 'package:appfloat/view/login.dart';

//teste1aaaaaaaaaaaaa
void main()
{
  runApp(const Inicializacao());
}

class Inicializacao extends StatelessWidget {
  const Inicializacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}
