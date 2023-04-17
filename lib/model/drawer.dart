import 'package:flutter/material.dart';
import 'package:appfloat/main.dart';

class Drawerr extends StatelessWidget {
  const Drawerr({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        backgroundColor: Colors.black12,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            //Foto do usuario
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
                  onTap: () {},
                ),
                ListTile(
                  leading: Icon(Icons.home, color: Colors.white,),
                  title: Text('Home', style: TextStyle(color: Colors.white,),),
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
            ],),
          ),
        ),

      appBar: AppBar(),
     );
  }
}
