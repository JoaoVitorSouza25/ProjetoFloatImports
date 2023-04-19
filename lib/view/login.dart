import 'package:flutter/material.dart';

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

          //Inserir informações

          //Usuario
          const Padding(padding: EdgeInsets.symmetric(horizontal: 60.0),
          child: TextField(
            decoration: InputDecoration(
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
          const Padding(padding: const EdgeInsets.symmetric(horizontal: 60.0),
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Senha',
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
            //Ocultar os caracteres
            obscureText: true,
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
                  onTap: (){},
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
                // Lógica a ser executada quando o usuário clicar no botão
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
         Row(   
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

        //Logar com conta google/apple


          //Cadastre-se

          

          


        ],
                      ), 
                      )
                    ),
    );
  }
}