import 'package:flutter/material.dart';
import 'mapa1.dart';
import 'mapa2.dart';
import 'mapa3.dart';

class Menu extends StatelessWidget {
  const Menu({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('App de Maps'),
          centerTitle: true,
          backgroundColor: Colors.amber
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>[
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mapa1())
              );
            },
            child: const Text('Mapa1'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mapa2())
              );
            },
            child: const Text('Mapa2'),
          ),
          ElevatedButton(
            onPressed: (){
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Mapa3())
              );
            },
            child: const Text('Mapa3'),
          ),
        ],
      ),
    );
  }
}
