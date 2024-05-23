import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa1 extends StatefulWidget {
  const Mapa1({Key? key}) : super(key : key);

  @override
  _Mapa1State createState() => _Mapa1State();
}

class _Mapa1State extends State<Mapa1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ARENA CORINTHIANS'),
          centerTitle: true,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(-23.5456, -46.475), zoom: 10),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/cycle/{z}/{x}/{y}.png?apikey=15999aa78aac4b2ea3d0c2da72c8d537',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(-23.5456, -46.475),
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