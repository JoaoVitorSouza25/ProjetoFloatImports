//Biblioteca
import 'package:appfloat/view/Funcionalidades/clientes.dart';
import 'package:appfloat/view/Funcionalidades/compras.dart';
import 'package:appfloat/view/Funcionalidades/estatisticas.dart';
import 'package:appfloat/view/Funcionalidades/produtos.dart';
import 'package:appfloat/view/Funcionalidades/sobre.dart';
import 'package:appfloat/view/Funcionalidades/perfil.dart';
import 'package:appfloat/view/Funcionalidades/vendas.dart';
import 'package:appfloat/view/Login/login.dart';
import 'package:appfloat/view/Modelos/botao.dart';
import 'package:flutter/material.dart';


//Classe
class Principal extends StatelessWidget {
  const Principal({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(
    drawer: Drawer(
      backgroundColor: const Color.fromARGB(150, 109,0,1),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(  
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          //Foto do usuario
          children: [
            Image.asset('lib/imagens/perfil.png', height: 70, width: 70),
            const SizedBox(height: 10,),
            const Text('João Vitor de Paula Souza', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
            const Text('contato@floatimports.com.br', style: TextStyle(color: Colors.white),),
            const SizedBox(height: 6),
            const Divider(
              thickness: 2, color: Colors.white,),

            //Ícones
            ListTile(
              leading: const Icon(Icons.shopping_bag_outlined, color: Colors.white,),
              title: const Text(
                'Vendas', style: TextStyle(color: Colors.white,)),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Vendas()),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.sell_outlined, color: Colors.white,),
              title: const Text(
                'Produtos', style: TextStyle(color: Colors.white,),),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Produtos()),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white,),
              title: const Text(
                'Clientes', style: TextStyle(color: Colors.white,),),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Clientes()),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.shopping_cart_outlined, color: Colors.white,),
              title: const Text(
                'Compras', style: TextStyle(color: Colors.white,)),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Compras()),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.assessment_outlined, color: Colors.white,),
              title: const Text(
                'Estatísticas', style: TextStyle(color: Colors.white,)),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Estatisticas()),);
              },
            ),

            //Divisor
            const SizedBox(height: 6),
            const Divider(
              thickness: 2, color: Colors.white,),

            ListTile(
              leading: const Icon(Icons.account_circle_rounded, color: Colors.white,),
              title: const Text(
                'Perfil', style: TextStyle(color: Colors.white,)),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Perfil()),);
              },
            ),
            ListTile(
              leading: const Icon(Icons.info_outline, color: Colors.white,),
              title: const Text(
                'Sobre', style: TextStyle(color: Colors.white,)),
              onTap: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Sobre()), );
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.white,),
              title: const Text(
                'Sair', style: TextStyle(color: Colors.white)),
              onTap: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Login()),);
              },
            ),
          ],
        ),
      ),
    ), // Drawer

    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
    ),

    body: SafeArea(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //Espaçamento
            const SizedBox(height: 30),

            //Botão Vendas
            Botao(
              texto: 'VENDAS', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Vendas()),);
              }
            ),

            //Espaçamento
            const SizedBox(height: 15),

            //Dados
            SizedBox(
              width: 400,
              height: 50,
              child: Table(            
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Qtde de Vendas',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Total de Vendas (R\$)',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: const [
                      TableCell(
                        child: Text('475',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 30),
                        ),
                      ),
                      TableCell(
                        child: Text('R\$ 1.322,50',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),
          
            //Espaçamento
            const SizedBox(height: 20),

            //Botão Produtos
            Botao(
              texto: 'PRODUTOS', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Produtos()),);
              }
            ),

            //Espaçamento
            const SizedBox(height: 15),

            //Dados
            SizedBox(
              width: 400,
              height: 50,
              child: Table(            
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Qtde de Produtos',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Qtde de Categorias',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: const [
                      TableCell(
                        child: Text('475',
                        textAlign: TextAlign.center,
                        style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                        fontSize: 30),
                        ),
                      ),
                      TableCell(
                        child: Text('25',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),

            //Espaçamento
            const SizedBox(height: 30),

            //Botão Compras
            Botao(
              texto: 'COMPRAS', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Compras()),);
              }
            ),

            //Espaçamento
            const SizedBox(height: 15),

            //Dados
            SizedBox(
              width: 400,
              height: 50,
              child: Table(            
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: const Text('Qtde de Compras',
                        textAlign: TextAlign.center,
                        style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                        fontSize: 16,
                        fontWeight: FontWeight.bold),),
                      ),
                      TableCell(
                        child: Text(
                          'Total de Compras(R\$)',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 16,
                          fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),

                  TableRow(
                    children: const [
                      TableCell(
                        child: Text(
                          '475',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 30),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'R\$ 850,00',
                          textAlign: TextAlign.center,
                          style: TextStyle(color:  Color.fromARGB(255, 109,0,1),
                          fontSize: 30),
                        ),
                      ),
                    ],
                  ),
                ],
              )
            ),

            //Espaçamento
            const SizedBox(height: 30),

            //Botão Clientes
            Botao(
              texto: 'CLIENTES', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Clientes()),);
              }
            ),

            //Espaçamento
            const SizedBox(height: 30),

            //Botão Estatisticas
            Botao(
              texto: 'ESTATÍSTICAS', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const Estatisticas()),);
              }
            )
          ],
        ),
      )
    )//SafeArea 
  ); //Scaffold
}//Widget
} //Classe