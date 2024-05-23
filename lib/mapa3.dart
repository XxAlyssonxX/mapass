import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa3 extends StatefulWidget {
  const Mapa3({Key? key}) : super(key : key);

  @override
  _Mapa3State createState() => _Mapa3State();
}

class _Mapa3State extends State<Mapa3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('USINA DE CHERCHER'),
          centerTitle: true,
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(51.295418,30.222702), zoom: 10),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/neighbourhood/{z}/{x}/{y}.png?apikey=15999aa78aac4b2ea3d0c2da72c8d537',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(51.295418,30.222702),
                      builder: (ctx) => Container(
                        child: Icon(Icons.location_on, color: Colors.red,),
                      ),
                    ),
                  ],
                )
              ],
            )
          ],
        )
    );
  }
}