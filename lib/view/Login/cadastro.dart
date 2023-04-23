//Bibliotecas
import 'package:appfloat/view/Login/login.dart';
import 'package:flutter/material.dart';

//Classe
class Cadastro extends StatelessWidget {
  const Cadastro({Key? key}) : super(key: key);

@override
Widget build(BuildContext context) {

  //Scaffold Geral
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('Cadastrar-se'),
    ),

    body: SafeArea(
      //Centralizar
      child: Center(
        child:Column(
          children: [

            //Espaçamento
            const SizedBox(height: 50),
            //Espaçamento
            const SizedBox(width: 20),
            
            //Texto introdutório
            const Text(' Realize seu cadastro!',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 30),

            //Inserir nome
            const Text('Informe seu nome',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Nome
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Nome',
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
            const Text('Informe seu CPF',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //CPF
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'CPF(somente números)',
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
            const Text('Informe sua data de Nascimento',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Data Nasc
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Data de Nascimento(DD/MM/AAAA)',
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
            const Text('Informe seu email',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Email
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Email',
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
           //Inserir informações
            const Text('Informe sua senha',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
              decoration: InputDecoration(    
                hintText: 'Senha',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),
            )),

            //Espaçamento
            const SizedBox(height: 25),

            //Confirmar Senha
            const Text('Confirme sua senha',
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(    
                  hintText: 'Confirmar a Senha',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  fillColor: Color.fromARGB(255, 255,255,255),
                  filled: true),
            )),

            //Espaçamento
            const SizedBox(height: 30),

            //Entrar
            SizedBox(
              width: 390,
              height: 56,
              child: ElevatedButton(
              onPressed: () {
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Confirme seu email'),
                    content: const Text('Foi enviado um e-mail para exemplo@gmail.com. Acesse o e-mail para finalizar o seu cadastro',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Login()), );
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
              child: const Text('CADASTRAR',
                style: TextStyle(
                  color: Color.fromARGB(255, 255,255,255), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ), //Botão CADASTRO
            ), //SizedBox
          ], //Children Column
         ), //Column
        ), //Center
      ), //SafeArea
    ); //Scaffold
  } //Widget
} //Classe