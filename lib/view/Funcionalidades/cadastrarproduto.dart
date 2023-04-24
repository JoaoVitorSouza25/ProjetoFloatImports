//Biblioteca
import 'package:appfloat/view/Funcionalidades/produtos.dart';
import 'package:appfloat/view/Modelos/botao.dart';
import 'package:flutter/material.dart';

//Classe
class CadProd extends StatelessWidget {
  const CadProd({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('CADASTRAR PRODUTO'),
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
        children: 
          [
             SizedBox(height: 20),

             //Texto introdutório
            const Text(' Informe os dados:',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

              SizedBox(height: 30),

            const Text('CÓDIGO SKU',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //SKU
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'SKU',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Informe a categoria:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            //Categoria
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Categoria',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Informe o clube/seleção:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

              //Clube/Seleção
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Clube/Seleção',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Informe o tipo:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

              //Tipo
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Tipo',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Crie a descrição:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

              //Descrição
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Descrição',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Informe o preço:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

              //Preço
            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Preço',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              Botao(
              texto: 'CADASTRAR PRODUTO', 
              onPressed: (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('PRODUTO ADICIONADO'),
                    content: const Text('Seu produto foi adicionado com sucesso!',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Produtos()), );
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
                );
              }
            ),

              SizedBox(height: 20),
          ]
      )
      ),
    )//SafeArea 
  ); //Scaffold
}//Widget
} //Classe