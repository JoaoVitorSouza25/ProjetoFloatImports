import 'package:flutter/material.dart';

class Recuperar extends StatelessWidget {
  const Recuperar({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {

    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255,208,210),

      appBar:  AppBar(
        backgroundColor: const Color.fromARGB(255, 109,0,1),
        title: const Text('Recuperar a senha'),
      ),

      body:SafeArea(
  child: Align(
    alignment: Alignment.center,
    child: SizedBox(
      width: 400,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Text
            const Text(
              'Esqueceu sua senha? Não se preocupe! \nNos informe o seu e-mail de cadastro para recuperar a sua senha:', 
              style: TextStyle(color: Color.fromARGB(255, 109,0,1), fontSize: 20),
              textAlign: TextAlign.center,
            ),

            //Espaçamento
            const SizedBox(height: 25),

            // Padding e TextField
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'E-mail',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 255,208,210)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black12),
                  ),
                  fillColor: Color.fromARGB(255, 109,0,1),
                  filled: true,
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(
                  color: Colors.white, // Defina a cor do texto
                    ),
                  ),
                ),

                //Espaçamento
                const SizedBox(height: 25),

                //Botão enviar email
                SizedBox(
                  width: 390,
                  height: 56,
                  child: ElevatedButton(
                  onPressed: () {
                      showDialog(
      context: context,
      builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('E-mail enviado!'),
                    content: const Text('Foi enviado um e-mail para exemplo@gmail.com. Acesse o e-mail para recuperar sua senha',
                    style:  TextStyle(
                  color: Color.fromARGB(255, 109,0,1),
                  )),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
              );

                  },
                  style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 255, 255, 255), // cor de fundo
                  shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10), // borda arredondada
                ),
              ),
              child: const Text(
                'Enviar e-mail',
                style: TextStyle(
                  color: Color.fromARGB(255, 109,0,1), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),

                ),
          ],
        ),
      ),
    ),


  ),
),



    );
  }
}