import 'package:flutter/material.dart';
import 'package:appfloat/view/produtos.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({Key? key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color.fromARGB(139, 85, 5, 5),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 70,),
            ),
            const SizedBox(height: 10,),
            const Text('Float Imports', style: TextStyle(color: Colors.white,fontSize: 20, fontWeight: FontWeight.bold),),
            const Text('contato@floatimports.com.br', style: TextStyle(color: Colors.white),),
            const SizedBox(height: 6,),
            const Divider(
              thickness: 2,
              color: Colors.white,
            ),
            //Ícones
            ListTile(
              leading: Icon(Icons.person, color: Colors.white,),
              title: Text('Profile', style: TextStyle(color: Colors.white,),),
              onTap: (){
                Navigator.push(context,
                MaterialPageRoute(builder: (context) => Produtos()));
              },
            ),
            ListTile(
              leading: Icon(Icons.home, color: Colors.white,),
              title: Text('Produtos', style: TextStyle(color: Colors.white,),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.car_crash, color: Colors.white,),
              title: Text('Order', style: TextStyle(color: Colors.white,),),
              onTap: (){},
            ),
            ListTile(
              leading: Icon(Icons.logout, color: Colors.white,),
              title: Text('Logout', style: TextStyle(color: Colors.white,),),
              onTap: (){},
            ),
          ],
        ),
      ),
    );
  }
}
