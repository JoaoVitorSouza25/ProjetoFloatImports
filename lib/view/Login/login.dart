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
        //Centralizar
        child: Center(
          child:Column(
        children: [

          //Espaçamento
          const SizedBox(height: 50),

          //Texto introdutório
          const Text(' Bem vindo ao Float Imports Controller!',
          style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 255, 255, 255),fontWeight: FontWeight.bold)),

          //Espaçamento
          const SizedBox(height: 50),

          //Logo da loja
          Image.asset('lib/imagens/logoapp.png', height: 250, width: 250),

          //Espaçamento
          const SizedBox(height: 50),
          
          //Email
          const Padding(padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: TextField(
            decoration: InputDecoration(
              icon: Icon(Icons.person, color: Color.fromARGB(255, 255,208,210)),
              
              hintText: 'Email',
              hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                ),
                fillColor: Color.fromARGB(255, 255,208,210),
                filled: true,
            ),

            //Teclado de email
            keyboardType: TextInputType.emailAddress,
            )
          ),

          //Espaçamento
          const SizedBox(height: 25),

          //Senha

          Padding(padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: TextField(
            decoration: InputDecoration(    
              icon: const Icon(Icons.lock, color: Color.fromARGB(255, 255,208,210)),
              suffixIcon: IconButton(
                icon: Oculto ? Icon(Icons.visibility_off) : Icon(Icons.visibility, color: Color.fromARGB(255, 109,0,1)),
              onPressed: (){
                  setState((){
                        Oculto = false;
                  });
              },
              ),
              hintText: 'Senha',
              hintStyle: const TextStyle(color: Color.fromARGB(255, 109,0,1)),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black12),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black12),
                ),
                fillColor: const Color.fromARGB(255, 255,208,210),
                filled: true,
            ),
            //Ocultar os caracteres
            obscureText: Oculto,
            ) 
          ),

          //Espaçamento
          const SizedBox(height: 15),

          //Esqueci minha senha
          Padding(
            //Espaço da lateral
            padding: const EdgeInsets.symmetric(horizontal: 60.0), 
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
          const SizedBox(height: 25),

          //Entrar
          SizedBox(
          width: 390,
          height: 56,
          child: ElevatedButton(
              onPressed: () {
                //Mover para a tela main
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Principal()),
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
        const SizedBox(height: 25),

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
        const SizedBox(height: 25),

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
            const SizedBox(width: 25),

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
        const SizedBox(height: 50),

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
                    ),
    );
  }
  
  void setState(Null Function() param0) {}
}