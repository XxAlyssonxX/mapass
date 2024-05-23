import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class Mapa2 extends StatefulWidget {
  const Mapa2({Key? key}) : super(key : key);

  @override
  _Mapa2State createState() => _Mapa2State();
}

class _Mapa2State extends State<Mapa2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Nagasaki'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          foregroundColor: Colors.white,
        ),
        body: Stack(
          children: [
            FlutterMap(
              options: MapOptions(center: LatLng(32.764233,129.872696), zoom: 10),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.thunderforest.com/transport/{z}/{x}/{y}.png?apikey=15999aa78aac4b2ea3d0c2da72c8d537',
                  userAgentPackageName: 'com.example.app',
                ),
                MarkerLayer(
                  markers: [
                    Marker(
                      width: 80.0,
                      height: 80.0,
                      point: LatLng(32.764233,129.872696),
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