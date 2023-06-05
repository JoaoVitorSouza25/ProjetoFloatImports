import 'package:appfloat/model/clientes.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../view/util.dart';
import 'login_controller.dart';

class ClienteController {
  //
  // ADICIONAR uma nova Tarefa na Coleção
  //
  void adicionar(context, Cliente c) {
    FirebaseFirestore.instance
        .collection('clientes')
        .add(c.toJson())
        .then((value) => sucesso(context, 'Cliente adicionado com sucesso'))
        .catchError((e) => erro(context, 'ERRO: ${e.code.toString()}'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // LISTAR
  //
  listar() {
    return FirebaseFirestore.instance
        .collection('clientes');
        //.where('uid', isEqualTo: LoginController().idUsuario());
  }

  //
  // ATUALIZAR
  //
  void atualizar(context, id, Cliente c) {
    FirebaseFirestore.instance
        .collection('clientes')
        .doc(id)
        .update(c.toJson())
        .then((value) => sucesso(context, 'Cliente atualizado com sucesso'))
        .catchError(
            (e) => erro(context, 'Não foi possível atualizar o cliente.'))
        .whenComplete(() => Navigator.pop(context));
  }

  //
  // EXCLUIR
  //
  void excluir(context, id) {
    FirebaseFirestore.instance
        .collection('clientes')
        .doc(id)
        .delete()
        .then((value) => sucesso(context, 'Cliente excluído com sucesso'))
        .catchError((e) => erro(context, 'Não foi possível excluir o cliente.'));
  }
}
