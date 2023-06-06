import 'package:flutter/material.dart';

class Botao extends StatelessWidget {
  final String texto;
  final VoidCallback onPressed;

const Botao({Key? key, required this.texto, required this.onPressed})
  : super(key: key);

@override
Widget build(BuildContext context) {
  return SizedBox(
    width: 420,
    height: 75,
    child: ElevatedButton(
            onPressed: onPressed,
            style: ElevatedButton.styleFrom(
              backgroundColor: const Color.fromARGB(255, 108, 0, 1), // cor de fundo
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30)), // borda arredondada
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(width: 15),
                Text(texto, 
                style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 30),
                ),
              ],
            ), 
            )

  );
  
  }
}
