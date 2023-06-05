//Bibliotecas
import 'package:appfloat/controller/login_controller.dart';
import 'package:appfloat/view/Login/login_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:brasil_fields/brasil_fields.dart';

//Classe
class CadastroView extends StatefulWidget {
  const CadastroView({super.key});

  @override
  State<CadastroView> createState() => _CadastroViewState();
}

class _CadastroViewState extends State<CadastroView> {
  var txtNome = TextEditingController();
  var txtCPF = TextEditingController();
  var dataNasc = TextEditingController();
  var txtEmail = TextEditingController();
  var txtSenha = TextEditingController();
  var txtSenha2 = TextEditingController();

  @override
  void initState() {  
    super.initState();
  }

@override
Widget build(BuildContext context) {

  

  //Scaffold Geral
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 255,208,210),

    appBar:  AppBar(
      backgroundColor: const Color.fromARGB(255, 109,0,1),
      title: const Text('Cadastrar-se'),
    ),

    body: SafeArea(
      //Centralizar
      child: SingleChildScrollView(
        child: Center(
        child:Column(
          children: [

            //Espaçamento
            const SizedBox(height: 20),
            
            //Texto introdutório
            const Text(' Realize seu cadastro!',
              style: TextStyle(fontSize: 24, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),

            //Espaçamento
            const SizedBox(height: 20),

            //Inserir nome
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Informe seu nome',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

            //Nome
            Padding(padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: txtNome,
                decoration: const InputDecoration(
                  hintText: 'Nome',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                  enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true,
            ), ) ),

            //Espaçamento
            const SizedBox(height: 25),

            //Inserir CPF
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Informe seu CPF(somente números)',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

            //CPF
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: txtCPF,
                keyboardType: TextInputType.number,
                 inputFormatters: [
                  // obrigatório
                  FilteringTextInputFormatter.digitsOnly,
                  CpfInputFormatter(),
                ],
                decoration: const InputDecoration(
                hintText: 'CPF',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true), 
            ) ),

            //Espaçamento
            const SizedBox(height: 25),

            //Inserir Data Nasc
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Informe sua data de nascimento(dd/mm/aaaa)',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

            //Data Nasc
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: dataNasc,
                decoration: const InputDecoration(
                hintText: 'Data de Nascimento(DD/MM/AAAA)',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true), 
              keyboardType: TextInputType.datetime,
            )),

            //Espaçamento
            const SizedBox(height: 25),

            //Email
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Informe seu e-mail',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

            //Email
             Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: txtEmail,
                decoration: const InputDecoration(
                hintText: 'Email',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black)),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),
                //Teclado de email
                keyboardType: TextInputType.emailAddress)
              ),

            //Espaçamento
            const SizedBox(height: 25),

            //Senha
           //Inserir informações
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Informe sua senha',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
              controller: txtSenha,
              decoration: const InputDecoration(    
                hintText: 'Senha',
                hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),),
                fillColor: Color.fromARGB(255, 255,255,255),
                filled: true),
            )),

            //Espaçamento
            const SizedBox(height: 25),

            //Confirmar Senha
            Padding(
              //Espaço da lateral
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
              children: const[
                 Text('Confirme a senha',
                            style: TextStyle(fontSize: 16, color: Color.fromARGB(255, 109, 0, 1),fontWeight: FontWeight.bold)),
              ],
            ),
            ),

            //Espaçamento
            const SizedBox(height: 10),

             Padding(padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: TextField(
                controller: txtSenha2,
                decoration: const InputDecoration(    
                  hintText: 'Confirmar a Senha',
                  hintStyle: TextStyle(color: Color.fromARGB(255, 109,0,1)),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),),
                  fillColor: Color.fromARGB(255, 255,255,255),
                  filled: true),
            )),

            //Espaçamento
            const SizedBox(height: 30),

            //Cadastrar
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 56,
              child: ElevatedButton(
              onPressed: () {
                if(txtSenha.text == txtSenha2.text)
                {
                  LoginController().criarConta(
                      context,
                      txtNome.text,
                      txtCPF.text,
                      dataNasc.text,
                      txtEmail.text,
                      txtSenha.text,
                    );
                }
                 
                else
                {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('SENHAS INCORRETAS'),
                    content: const Text('As senhas são diferentes. Digite novamente por favor',
                        style:  TextStyle(
                        color: Color.fromARGB(255, 109,0,1),)
                    ),
                    actions: [
                      TextButton(
                        onPressed: () {
                         Navigator.pop(context);
                        },
                        child: const Text('OK'),
                      ),
                    ],
                  );
                },
                );
                }

              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 109, 0, 1), // cor de fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),  // borda arredondada
              ),
              child: const Text('CADASTRAR',
                style: TextStyle(
                  color: Color.fromARGB(255, 255,255,255), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ), //Botão CADASTRO
            ), //SizedBox

            //Espaçamento
              const SizedBox(height: 20),

            //Voltar pra tela de inicio
            SizedBox(
              width: MediaQuery.of(context).size.width - 40,
              height: 56,
              child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => const LoginView()),);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 109, 0, 1), // cor de fundo
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),  // borda arredondada
              ),
              child: const Text('CANCELAR CADASTRO',
                style: TextStyle(
                  color: Color.fromARGB(255, 255,255,255), // cor do texto
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                ),
              ),
              ), //Botão CADASTRO
            ),

            //Espaçamento
              const SizedBox(height: 30),
          ], //Children Column
         ), //Column
        ), //Center
      )
      ), //SafeArea
    ); //Scaffold
  } //Widget
}

class CustomTextInputFormatter extends TextInputFormatter {
  final String mask;
  final String separator;

  CustomTextInputFormatter({required this.mask, this.separator = '.'});

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var newText = '';
    var selectionIndex = newValue.selection.end;

    var nonSeparatorIndex = 0;
    var separatorIndex = 0;

    while (nonSeparatorIndex < newValue.text.length &&
        separatorIndex < separator.length) {
      if (mask[separatorIndex] == '#') {
        newText += newValue.text[nonSeparatorIndex];
        nonSeparatorIndex++;
      } else {
        newText += separator[separatorIndex];
      }
      separatorIndex++;
    }

    if (nonSeparatorIndex < newValue.text.length) {
      newText += newValue.text.substring(nonSeparatorIndex);
    }

    selectionIndex += separatorIndex - oldValue.text.length;

    return TextEditingValue(
      text: newText,
      selection: TextSelection.collapsed(offset: selectionIndex),
    );
  }
}

