import 'package:appfloat/view/Funcionalidades/perfil.dart';
import 'package:appfloat/view/Funcionalidades/produtos.dart';
import 'package:appfloat/view/Funcionalidades/sobre.dart';
import 'package:flutter/material.dart';
import 'package:appfloat/view/TelaInicial.dart';

import 'view/Login/login.dart';
//import 'package:appfloat/view/Login/login.dart';

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
      //home: Login(),
      home: Produtos(),
    );
  }
}