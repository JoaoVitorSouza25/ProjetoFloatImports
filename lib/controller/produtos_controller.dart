import 'package:appfloat/model/produtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:appfloat/model/vendas.dart';

import '../view/util.dart';
import 'login_controller.dart';

class ProdutosController {
  //
  // ADICIONAR uma nova Tarefa na Coleção
  //
  void adicionar(context, Produtos p) {
    FirebaseFirestore.instance
        .collection('produtos')
        .add(p.toJson())
        .then((value) => sucesso(context, 'Produto adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // LISTAR
  //
  listarProd() {
    return FirebaseFirestore.instance
        .collection('produtos');
        //.where('uid', isEqualTo: LoginController().idUsuario());
  }
}
