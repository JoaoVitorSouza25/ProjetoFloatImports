import 'package:flutter/material.dart';
import 'package:appfloat/view/TelaInicial.dart';
import 'package:appfloat/view/Login/cadastro.dart';
import 'package:appfloat/view/Login/recuperar.dart';

//Variavel para mudar Status do olho da senha
// ignore: non_constant_identifier_names
bool Oculto = true;

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      //Cor do fundo
      backgroundColor: const Color.fromARGB(255, 109,0,1),

      //Corpo fora do topo
      body: SafeArea(
        child: SingleChildScrollView(
           //Centralizar
        child: Center(
          child:Column(
        children: [

          //Espaçamento
          const SizedBox(height: 30),

          //Texto introdutório
          const Text(' Bem vindo ao Float Imports Controller!',
          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),

          //Espaçamento
          const SizedBox(height: 30),

          //Logo da loja
          Image.asset('lib/imagens/logoapp.png', height: 250, width: 250),

          //Espaçamento
          const SizedBox(height: 30),
          
          //Email
          const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(
              prefixIcon: Padding(
                padding: EdgeInsets.only(left: 8.0, right: 4.0),
                child: Icon(Icons.person, color: Color.fromARGB(255, 109, 0, 1)),
              ),
              hintText: 'Email',
              hintStyle: TextStyle(color: Color.fromARGB(255, 109, 0, 1)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              fillColor: Color.fromARGB(255, 255, 208, 210),
              filled: true,
            ),
            keyboardType: TextInputType.emailAddress,
          ),
        ),

          //Espaçamento
          const SizedBox(height: 20),

          //Senha
          const Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: TextField(
            decoration: InputDecoration(

              prefixIcon: Padding(
                
                padding: EdgeInsets.only(left: 8.0, right: 4.0),
                child: Icon(Icons.lock, color: Color.fromARGB(255, 109, 0, 1)),
                
                
              ),
              hintText: 'Senha',
              hintStyle: TextStyle(color: Color.fromARGB(255, 109, 0, 1)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
              ),
              fillColor: Color.fromARGB(255, 255, 208, 210),
              filled: true,
            ),
            obscureText: true,
          ),
        ),

          //Espaçamento
          const SizedBox(height: 15),

          //Esqueci minha senha
          Padding(
            //Espaço da lateral
            padding: const EdgeInsets.symmetric(horizontal: 20.0), 
            child: Row(
              //Alinhar na lateral direita
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               InkWell(
                child: const Text(
                 'Esqueceu a senha?',
                  style: TextStyle(
                  color: Color.fromARGB(200, 255,208,210),
                  ),
                   ),

                  //Ao clicar, ir para tela de Esqueci a senha
                  onTap: (){
                    //Mover para a tela de recuperar
                Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Recuperar()),
                  );
                  },
               )
                     ], 
                    ),
            ),

          //Espaçamento
          const SizedBox(height: 15),

          //Entrar
          SizedBox(
          width: 390,
          height: 56,
          child: ElevatedButton(
              onPressed: () {
                //Mover para a tela main
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Principal()),
                );
                
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 255, 255, 255), // cor de fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // borda arredondada
                ),
              ),
              child: const Text(
                'ENTRAR',
                style: TextStyle(
                  color: Color.fromARGB(255, 109,0,1), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
        ),

        //Espaçamento
        const SizedBox(height: 15),

        //Detalhe
        Padding(padding: const EdgeInsets.symmetric(horizontal: 60.0),
        child: Row(   
          children: const [
              Expanded(
            child: Divider(
            thickness: 0.5,
            color: Colors.white,
          ),),
             Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: Text('Ou faça login com',
                        style: TextStyle(color: Color.fromARGB(200, 255,208,210)),
            ),
          ),
          Expanded(child: Divider(
            thickness: 0.5,
            color: Colors.white,
          ),),
          ]
          ),
          ),

        //Espaçamento
        const SizedBox(height: 15),

        //Logar com conta google/apple
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            
            //Inkwell para usar ontap
            InkWell(
              onTap: (){},

              //Google
              child: Container( 
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(200, 255,208,210)),
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255,255,255),
              ),
              child: //Google
              Image.asset('lib/imagens/google.png', height: 30, width: 30),       
            ),
            ),
            
            //Espaçamento lateral
            const SizedBox(width: 35),

            //Inkwell para usar ontap
            InkWell(
              onTap: () {},

              child: 
              //Apple
             Container( 
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                border: Border.all(color: const Color.fromARGB(200, 255,208,210)),
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 255,255,255),
              ),
              child: //Google     
            Image.asset('lib/imagens/apple.png', height: 30, width: 30),       
            ),
            ),
          ],
        ),

        //Espaçamento
        const SizedBox(height: 30),

        //Cadastre-se
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:  [

            const Text(
                 'Não tem uma conta?',
                  style: TextStyle(
                  color: Color.fromARGB(200, 255,208,210),
                  ),
            ),

            //Espaçamento lateral
            const SizedBox(width: 5),

            //Texto para cadastrar
            InkWell(
              onTap: () {
                //Mover para a tela de cadastro
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Cadastro()),
                );
                 
              },
              child: const Text(
                 'CADASTRE-SE AQUI!',
                  style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  ),
                   ),
            ),
            

        ],
        )

        
        ],
                      ), 
                      )

        )
                    ),
    );
  }
  
  void setState(Null Function() param0) {}
}