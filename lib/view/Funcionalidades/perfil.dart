//Biblioteca
import 'package:appfloat/view/TelaInicial.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

//Classe
class Perfil extends StatefulWidget {
  const Perfil({super.key});


@override
  State<Perfil> createState() => _PerfilState();
}

class _PerfilState extends State<Perfil> {

  TextEditingController nomeController = TextEditingController();
  TextEditingController cpfController = TextEditingController();
  TextEditingController dataNascimentoController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // Recuperar os dados do usuário do Firestore
    recuperarDadosUsuario();
  }

  void recuperarDadosUsuario() async {
  User? user = FirebaseAuth.instance.currentUser;
  if (user != null) {
    String userId = user.uid;
    DocumentSnapshot snapshot = await FirebaseFirestore.instance.collection('usuarios').doc(userId).get();
    if (snapshot.exists) {
      Map<String, dynamic> userData = snapshot.data() as Map<String, dynamic>;
      setState(() {
        cpfController.text = userData['cpf'] ?? '';
        nomeController.text = userData['nome'] ?? '';
        dataNascimentoController.text = userData['dataNascimento'] ?? '';
      });
    }
  }
}

@override
Widget build(BuildContext context) {
  return 
  Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('Meu perfil'),
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        //Centralizar
        child: Center(
        child:Column(
          children: [

            //Espaçamento
            const SizedBox(height: 50),
            //Espaçamento
            const SizedBox(width: 20),
            
            //Texto introdutório
            const Text('DADOS PESSOAIS',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 30),

            //Inserir nome
            const Text('Nome',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Nome
            Padding(padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: nomeController,
                decoration: const InputDecoration(
                  hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true,
            ), ) ),

            //Espaçamento
            const SizedBox(height: 25),

            //Inserir CPF
            const Text('CPF',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //CPF
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '123.456.789-10',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true), 
              keyboardType: TextInputType.number,
            ) ),

            //Espaçamento
            const SizedBox(height: 25),

            //Inserir Data Nasc
            const Text('Data de Nascimento',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Data Nasc
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '18/03/2022',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true), 
              keyboardType: TextInputType.datetime,
            )),

            //Espaçamento
            const SizedBox(height: 25),

            //Email
            const Text('E-mail',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Email
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'contato@floatimports.com.br',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),
                //Teclado de email
                keyboardType: TextInputType.emailAddress)
              ),

            //Espaçamento
            const SizedBox(height: 25),

            //Senha
            const Text('Senha',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

              //Espaçamento
            const SizedBox(height: 10),

            //Senha
           //Inserir informações
          Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
          child: TextField(
            decoration:  const InputDecoration(
              hintStyle:  TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder:  OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor:  Color.fromARGB(255, 255,255,255),
                filled: true
            ),
            ) 
          ),

            //Espaçamento
            const SizedBox(height: 50),

            //Entrar
            SizedBox(
              width: 400,
              height: 56,
              child: ElevatedButton(
              onPressed: () {
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Dados do perfil salvo'),
                    content: const Text('Todas as suas alterações foram salvas',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Principal()), );
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 109, 0, 1), // cor de fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),  // borda arredondada
              ),
              child: const Text('SALVAR ALTERAÇÕES',
                style: TextStyle(
                  color: Color.fromARGB(255, 255,255,255), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ), //Botão Perfil
            ), //SizedBox
          ], //Children Column
         ), //Column
        ), 

      ),
      //Center
      ), //SafeArea
    );//Scaffold
}//Widget
}