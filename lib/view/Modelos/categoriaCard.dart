import 'package:flutter/material.dart';

import '../../Dados/categorias.dart';

class CategoriaCard extends StatelessWidget {
  const CategoriaCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: ListView.builder(
        itemCount: categorias.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context,index)=>Padding(
          padding: const EdgeInsets.only(right: 8),
          child: Container(
            width: 120,
          decoration: BoxDecoration(
            color: categorias[index].ativo
            ?const Color.fromARGB(255, 109,0,1,)
            :const Color.fromARGB(255, 255,208,210),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                Icon(categorias[index].icon,
                color: categorias[index].ativo
                ?const Color.fromARGB(255, 255,255,255,)
                :const Color.fromARGB(255, 109,0,1),
                  ),
                SizedBox(width: 10),
                Text(categorias[index].nome,
                style: TextStyle(
                  color: categorias[index].ativo
                  ?const Color.fromARGB(255, 255,255,255,)
                  :const Color.fromARGB(255, 109,0,1),
                  fontSize: 16
                ),),
          ]),

          )
        )),
    );
  }
} //Classe