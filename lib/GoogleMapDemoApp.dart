import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapDemoApp extends StatefulWidget {
  const GoogleMapDemoApp({super.key});

  @override
  State<GoogleMapDemoApp> createState() => _GoogleMapDemoAppState();
}

class _GoogleMapDemoAppState extends State<GoogleMapDemoApp> {

  late GoogleMapController googleMapController;
  final LatLng latLng = const LatLng(12.9739461042,77.5930642944);

  void _onMapCreated(GoogleMapController mapController) {
    googleMapController = mapController;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Google Maps Demo"),
        backgroundColor: Colors.pinkAccent,
      ),
      body: GoogleMap(
        onMapCreated: _onMapCreated,
        initialCameraPosition: CameraPosition(
            target: latLng,
            zoom: 11.0
        ),
        mapType: MapType.hybrid,
        markers: {
          Marker(markerId: MarkerId('marker'),
          position: latLng)
        },

      ),
    );
  }
}
