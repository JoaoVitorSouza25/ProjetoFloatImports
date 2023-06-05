import 'package:appfloat/view/Login/login_view.dart';
import 'package:appfloat/view/TelaInicial.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:appfloat/view/util.dart';

class LoginController {
  //
  // CRIAR UMA NOVA CONTA no serviço
  // Firebase Authentication
  //
  criarConta(context, nome, cpf, datanasc, email, senha) {
    FirebaseAuth.instance
        .createUserWithEmailAndPassword(email: email, password: senha)
        .then((resultado) {

          //Armazenar o usuario no firebase firestore

          FirebaseFirestore.instance.collection('usuarios').add(
            {
                'uid' : resultado.user!.uid ,
                'nome': nome,
                'CPF': cpf,
                'Datanasc': datanasc,
            }
          );
      sucesso(context, 'Usuário criado com sucesso.');
      Navigator.pop(context);
    }).catchError((e) {
      switch (e.code) {
        case 'email-already-in-use':
          erro(context, 'O email já foi utilizado.');
          break;
        case 'invalid-email':
          erro(context, 'O formato do email é inválido');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // LOGIN
  //
  login(context, email, senha) {
    FirebaseAuth.instance
        .signInWithEmailAndPassword(email: email, password: senha)
        .then((value) {
      sucesso(context, 'Usuário autenticado com sucesso!');
      Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Principal()),);
              }
    ).catchError((e) {
      switch (e.code) {
        case 'user-not-found':
          erro(context, 'Usuário não encontrado.');
          break;
        default:
          erro(context, 'ERRO: ${e.code.toString()}');
      }
    });
  }

  //
  // ESQUECEU A SENHA
  //
  esqueceuSenha(BuildContext context, String email) {
  FirebaseAuth.instance.sendPasswordResetEmail(email: email)
    .then((value) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text('E-mail enviado!'),
            content: Text('Foi enviado um  e-mail para $email. Verifique sua caixa de e-mail e redefina sua senha.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const LoginView()),);
                },
                child: Text('OK'),
              ),
            ],
          );
        },
      );
    })
    .catchError((e) {
      erro(context, 'ERRO: ${e.code.toString()}');
    });
  //Navigator.pop(context);
}


  // LOGOUT
  //
  logout() {
    FirebaseAuth.instance.signOut();
  }

  //
  // ID do Usuário Logado
  //
  idUsuario() {
    return FirebaseAuth.instance.currentUser!.uid;
  }

  //
  // NOME do Usuário Logado
  //
  Future<String> usuarioLogado() async {
    var usuario = '';
    await FirebaseFirestore.instance
        .collection('usuarios')
        .where('uid', isEqualTo: idUsuario())
        .get()
        .then(
      (resultado) {
        usuario = resultado.docs[0].data()['nome'] ?? '';
      },
    );
    return usuario;
  }
}