//Biblioteca
import 'package:appfloat/view/TelaInicial.dart';
import 'package:flutter/material.dart';

//Variavel para mudar Status do olho da senha
// ignore: non_constant_identifier_names
bool Oculto = true;

TextEditingController _controller = TextEditingController(text: 'João Vitor Souza');

//Classe
class Perfil extends StatelessWidget {
  const Perfil({super.key});

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
            const Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'João Vitor de Paula Souza',
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
            decoration: InputDecoration(    
              suffixIcon: IconButton(
                icon: Oculto ? Icon(Icons.visibility_off) : Icon(Icons.visibility, color: Color.fromARGB(255, 109,0,1)),
              onPressed: (){
                  setState((){
                        Oculto = false;
                  });
              },
              ),
              hintText: '********',
              hintStyle: const TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: const Color.fromARGB(255, 255,255,255),
                filled: true
            ),
            //Ocultar os caracteres
            obscureText: Oculto,
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

void setState(Null Function() param0) {}
} //Classe