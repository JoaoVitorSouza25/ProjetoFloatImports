//Biblioteca
import 'package:appfloat/view/Compras/compras.dart';
import 'package:appfloat/view/Produtos/produtosMain.dart';
import 'package:appfloat/model/botao.dart';
import 'package:appfloat/view/Vendas/vendasMain.dart';
import 'package:flutter/material.dart';

//Classe
class editarCompras extends StatelessWidget {
  const editarCompras({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('EDITAR COMPRA'),
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
        children: 
          [


             const SizedBox(height: 20),

             //Texto introdutório
            const Text(' Dados da compra:',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

              const SizedBox(height: 30),

            const SizedBox(height: 30),

            const Text('Código',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: '110',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

            const Text('DATA DA COMPRA',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '23/04/2023',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),


              SizedBox(height: 20),

              const Text('Custo',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Pacote 102',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Preço:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'R\$ 100,00',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Forma de pagamento:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'PIX',
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
              texto: 'SALVAR ALTERAÇÕES', 
              onPressed: (){
                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('COMPRA ALTERADA'),
                    content: const Text('Sua compra foi alterada com sucesso!',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Compras()), );
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