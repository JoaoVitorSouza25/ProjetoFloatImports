//Biblioteca
import 'package:appfloat/Dados/vendasBase.dart';
import 'package:appfloat/view/Clientes/clientes.dart';
import 'package:appfloat/view/Compras/compras.dart';
import 'package:appfloat/view/Funcionalidades/estatisticas.dart';
import 'package:appfloat/view/Funcionalidades/perfil.dart';
import 'package:appfloat/view/Funcionalidades/sobre.dart';
import 'package:appfloat/view/Login/login.dart';
import 'package:appfloat/view/Modelos/botao.dart';
import 'package:appfloat/view/Produtos/produtos.dart';
import 'package:appfloat/view/Vendas/cadastrarvenda.dart';
import 'package:appfloat/view/Vendas/editarVenda.dart';
import 'package:flutter/material.dart';

//Classe
class Vendas extends StatelessWidget {
  const Vendas({super.key});

@override
Widget build(BuildContext context) {
  return Scaffold(

    backgroundColor: Color.fromARGB(255, 255,208,210),
    
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
      title: Text('Vendas'),
      ),

    body: SafeArea(
      child: Padding(padding: const EdgeInsets.all(12),
      child: SingleChildScrollView(
       child: Column(
        children: 
          [
            const SizedBox(height: 15),
          TextFormField(
            cursorColor:const Color.fromARGB(255, 109,0,1),
            decoration: const InputDecoration(
              fillColor: Colors.white, filled: true,
              hintText: 'Procurar',
              hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
              prefixIcon: Icon(Icons.search, color: Color.fromARGB(255, 109,0,1)),
              ),
          ),

          //Espaçamento
          const SizedBox(height: 15,),

          SizedBox(
            child: Expanded(child: ListView.separated(
              shrinkWrap: true,
              separatorBuilder: (__, _) => const Divider(),
              itemCount: vendaBase.length,
              itemBuilder: ((context, index) 
              {
                  return ListTile(
                    onTap: ()
                    {
                      Navigator.push(
                      context,
                        MaterialPageRoute(builder: (context) => const editarVenda()));
                    }
                    ,
                      title: Text('Pedido: ' + vendaBase[index].pedido),
                  );
              }),
            ),
            ),
          ),

          const SizedBox(height: 15),
          
          Botao(
              texto: 'ADICIONAR VENDA', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const CadVenda()),);
              }
            ),
            
          ]
        ),
      ),
    )
    )//SafeArea 
  ); //Scaffold
}//Widget
} //Classe