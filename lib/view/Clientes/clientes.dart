//Biblioteca
import 'package:appfloat/controller/clientes_controller.dart';
import 'package:appfloat/view/Compras/compras.dart';
import 'package:appfloat/view/Funcionalidades/estatisticas.dart';
import 'package:appfloat/view/Funcionalidades/perfil.dart';
import 'package:appfloat/view/Funcionalidades/sobre.dart';
import 'package:appfloat/view/Login/login_view.dart';
import 'package:appfloat/view/Modelos/botao.dart';
import 'package:appfloat/view/Produtos/produtos.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

import '../Vendas/vendas.dart';
import 'cadastrarclientes.dart';

//Classe
class Clientes extends StatefulWidget {
  const Clientes({super.key});

  @override
  State<Clientes> createState() => _ClientesState();
}

  class _ClientesState extends State<Clientes> {
  var txtnome= TextEditingController();
  var txtCPF= TextEditingController();
  var txttelefone= TextEditingController();
  var txtEndereco = TextEditingController(); 
  var txtcep = TextEditingController();
  var txtcidade = TextEditingController();

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
            Image.asset('lib/images/perfil.png', height: 70, width: 70),
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
                  context, MaterialPageRoute(builder: (context) => Perfil()),);
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
                  context, MaterialPageRoute(builder: (context) => const LoginView()),);
              },
            ),
          ],
        ),
      ),
    ), // Drawer

    appBar: AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: Text('Clientes'),
      ),
      
       body: SafeArea(
        child: Column(
          children: [

            Padding(
          padding: const EdgeInsets.all(20.0),
          child: StreamBuilder<QuerySnapshot>(
            stream: ClienteController().listar().snapshots(),
            builder: (context, snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.none:
                  return const Center(
                    child: Text('Não foi possível conectar.'),
                  );
                case ConnectionState.waiting:
                  return const Center(
                    child: CircularProgressIndicator(),
                  );
                default:
                  final dados = snapshot.requireData;
                  if (dados.size > 0) {
                    return ListView.builder(
                      itemCount: dados.size,
                      itemBuilder: (context, index) {
                        String id = dados.docs[index].id;
                        dynamic item = dados.docs[index].data();
                        return Card(
                          child: ListTile(
                            leading: const Icon(Icons.person),
                            title: Text(item['nome']),
                            subtitle: Text(item['nome']),
                            onTap: () {
                              txtnome.text = item['nome'];
                              txtCPF.text = item['cpf'];
                              txttelefone.text = item['telefone'];
                              txtEndereco.text = item['endereco'];
                              txtcep.text = item['cep'];
                              txtcidade.text = item['cidade'];
                            },
                            onLongPress: () {
                              // Realizar ação de exclusão do cliente
                              ClienteController().excluir(context, id);
                            },
                          ),
                        );
                      },
                    );
                  } else {
                    return const Center(
                      child: Text('Nenhum cliente encontrado.'),
                    );
                  }
              }
            },
          ),
        ),

        SizedBox(height: 20),

              Botao(
              texto: 'CADASTRAR CLIENTE', 
              onPressed: (){
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const CadCliente()),);
              }
            ),

          ],
        )
      ),
    );
    
}//Widget
} //Classe