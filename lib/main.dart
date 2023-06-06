import 'package:appfloat/view/Clientes/clientesMain.dart';
import 'package:appfloat/view/TelaInicial.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'view/Login/login_view.dart';
import 'firebase_options.dart';
import 'package:appfloat/view/Login/login_view.dart';
import 'package:appfloat/view/Login/cadastro_view.dart';

//teste1aaaaaaaaaaaaa
void main() async

{ 


  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  
  WidgetsFlutterBinding.ensureInitialized();  
  runApp(const Inicializacao(),
  );  
}

class Inicializacao extends StatelessWidget {
  const Inicializacao({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginView(),
    );
  }
}
