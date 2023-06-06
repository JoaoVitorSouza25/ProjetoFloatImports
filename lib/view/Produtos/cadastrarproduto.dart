//Biblioteca
import 'package:appfloat/controller/produtos_controller.dart';
import 'package:appfloat/model/clientes.dart';
import 'package:appfloat/model/produtos.dart';
import 'package:appfloat/view/Clientes/clientesMain.dart';
import 'package:appfloat/view/Compras/compras.dart';
import 'package:appfloat/view/Produtos/produtosMain.dart';
import 'package:appfloat/model/botao.dart';
import 'package:appfloat/view/Vendas/vendasMain.dart';
import 'package:flutter/material.dart';

import '../../controller/clientes_controller.dart';
import '../../controller/login_controller.dart';

//Classe
class CadProd extends StatefulWidget {
  const CadProd({super.key});

  @override
  State<CadProd> createState() => _CadProdState();
}

class _CadProdState extends State<CadProd> {
  var ativo = TextEditingController();
  var sku = TextEditingController();
  var categoria = TextEditingController();
  var time = TextEditingController();
  var tipo = TextEditingController();
  var desccamisa = TextEditingController();
  var preco = TextEditingController();


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


             const SizedBox(height: 20),

             //Texto introdutório
            const Text(' Informe os dados:',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

              SizedBox(height: 20),

            const Text('Ativo',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: ativo,
                decoration: InputDecoration(
                hintText: 'SIM/NÃO',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),


              SizedBox(height: 20),

              const Text('Informe o SKU',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: sku,
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

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: categoria,
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

              const Text('Time:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: time,
                decoration: InputDecoration(
                hintText: 'Clube/seleção',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Tipo:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: tipo,
                decoration: InputDecoration(
                hintText: 'Torcedor/Feminina',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Descrição:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: desccamisa,
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

              const Text('Preço:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                controller: preco,
                decoration: InputDecoration(
                hintText: '0,00',
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
                var p = Produtos(
                  ativo.text,
                  sku.text,
                  categoria.text,
                  time.text,
                  tipo.text,
                  desccamisa.text,
                  preco.text
                );
                  ProdutosController().adicionar(context, p);

                showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('PRODUTO CADASTRADO'),
                    content: const Text('O produto foi cadastrado com sucesso!',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => ProdutosView()), );
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
                );
              }
            ),

              const SizedBox(height: 20),
          ]
      )
      ),
    )//SafeArea 
  ); //Scaffold
}//Widget 
}//Classe