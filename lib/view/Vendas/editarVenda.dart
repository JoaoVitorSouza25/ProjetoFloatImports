//Biblioteca
import 'package:appfloat/view/Produtos/produtos.dart';
import 'package:appfloat/view/Modelos/botao.dart';
import 'package:appfloat/view/Vendas/vendas.dart';
import 'package:flutter/material.dart';

//Classe
class editarVenda extends StatelessWidget {
  const editarVenda({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('VER/EDITAR VENDA'),
    ),

    body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
        children: 
          [


             const SizedBox(height: 20),

             //Texto introdutório
            const Text(' Dados da venda:',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

              const SizedBox(height: 30),

            const SizedBox(height: 30),

            const Text('Número do pedido',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '130',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

            const Text('DATA DO PEDIDO',
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

              const Text('Comprador',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Pedro Henrique',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Produto',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'ARS12023',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Quantidade',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '1',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('valor total:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'R\$ 129,90',
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

              const Text('CEP:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: '14.120-000',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Cidade:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Dumont/SP',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),)
              ),

              SizedBox(height: 20),

              const Text('Informe o Endereço:',
              textAlign: TextAlign.left,
              style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(padding: EdgeInsets.symmetric(horizontal: 50.0),
              child: TextField(
                decoration: InputDecoration(
                hintText: 'Rua João, 160, Jardim 2',
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
                    title: const Text('VENDA ALTERADA'),
                    content: const Text('Sua venda foi alterada com sucesso!',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.push(
                          context, MaterialPageRoute(builder: (context) => const Vendas()), );
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