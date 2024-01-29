import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:kitengela/COMPONENTS/toolbar.dart';
import 'package:kitengela/config/app%20strings.dart';
import 'package:kitengela/styles/appcolors.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: Toolbar(title: AppStrings.nearby),
        body: FlutterMap(
          options: MapOptions(center: LatLng(51.90, 99.7), zoom: 10),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
              // Plenty of other options available!
            ),
            MarkerLayer(markers: [
              Marker(
                  point: LatLng(76.5, -22.2),
                  height: 50,
                  width: 100,
                  child: Builder(builder: (context) {
                    return Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.all(
                            Radius.circular(14),
                          ),
                        ),
                        child: Text(
                          "Username",
                          style: TextStyle(color: AppColors.black),
                        ));
                  })),
            ]),
          ],
        ));
  }
}
