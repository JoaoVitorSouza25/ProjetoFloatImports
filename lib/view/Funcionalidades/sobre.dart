//Biblioteca
import 'package:flutter/material.dart';

//Classe
class Sobre extends StatelessWidget {
  const Sobre({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(

    appBar: AppBar(
      title: const Text('Sobre'),
     backgroundColor: const Color.fromARGB(255, 109,0,1),
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
        children: 
          [
            //Espaçamento
            const SizedBox(height: 50),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                ClipRRect(
                  borderRadius: BorderRadius.circular(70), // define o raio do canto para fazer a borda circular
                  child: Image.asset(
                    'lib/imagens/cesare.jpg',
                    width: 150,
                    height: 150,
                    fit: BoxFit.cover,
                  ),
                ),

              //Espaçamento
              const SizedBox(width: 60),

              ClipRRect(
                  borderRadius: BorderRadius.circular(70), // define o raio do canto para fazer a borda circular
                  child: Image.asset(
                    'lib/imagens/joao.jpg',
                    width: 150,
                    height: 150, 
                    fit: BoxFit.cover,
                  ),
                ),
            ],),

            //Espaçamento
            const SizedBox(height: 15),

            //Nomes
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Cesare Crosara Cardoso', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                  Text('|', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                  Text('João Vitor de Paula Souza', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                ],
              )
            ), 

            //Espaçamento
            const SizedBox(height: 30),

            //Nome do aplicativo
            Container(
              margin: const EdgeInsets.only(left: 40),
              child:  Row(
                children: const [
                  Text('Nome do Aplicativo: ', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                  Text('Float Imports Controller',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 109, 0, 1)))
                ],
              )
            ), 

            //Espaçamento
            const SizedBox(height: 15),

            //Tema
            Container(
              margin: const EdgeInsets.only(left: 40),
              child:  Row(
                children: const [
                  Text('Tema: ', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                  Text('ERP de E-commerce',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 109, 0, 1)))
                ],
              )
            ),
            
            //Espaçamento
            const SizedBox(height: 15),

            //Objetivo
            Container(
              margin: const EdgeInsets.only(left: 40),
              child:  Row(
                children: const [
                  Text('Objetivo do Aplicativo: ', 
                  style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold, color: Color.fromARGB(255, 109, 0, 1))),
                  Text('O objetivo do aplicativo é ser um',
                  style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 109, 0, 1)))
                ],
              )
            ),

            //Continuação objetivo
            Container(
              margin:  const EdgeInsets.only(left: 40),
              child: const Text('software ERP, sendo um software de controle interno da equipe da loja Float Imports.'
              ' A loja é um e-commerce de camisas de times de futebol, onde envia para todo o Brasil. Por isso, é importante para a equipe '
              'saber quais as camisas mais vendidas e ter um controle também de custos de compra, total de vendas, e controle de estoque. '
              'O aplicativo conta com 9 funcionalidades, sendo elas:'
              '\n\t\t•Cadastrar vendas'
              '\n\t\t•Consultar/editar vendas'
              '\n\t\t•Cadastrar produto'
              '\n\t\t•Consultar/editar produtos'
              '\n\t\t•Cadastrar cliente'
              '\n\t\t•Consultar/editar cliente'
              '\n\t\t•Cadastrar compras'
              '\n\t\t•Consultar/editar compras '
              '\n\t\t•Análise de dados',
              style: TextStyle(fontSize: 18, color: Color.fromARGB(255, 109, 0, 1))
            )

            )
          ]
      )
      ),
    )//SafeArea 
  ); //Scaffold
}//Widget
} //Classe