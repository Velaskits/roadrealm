import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  late GoogleMapController mapController;
  LatLng _center = const LatLng(0, 0);

  // Lista de puntos que representan la ruta guardada
  final List<List<LatLng>> _rutasGuardadas = [
    [
      const LatLng(41.447707, 2.135282), //inicio ruta 1
      const LatLng(41.480137, 2.131415), //final ruta 1
    ],
    [
      const LatLng(41.462231, 2.087687), //inicio ruta 2
      const LatLng(41.425045, 2.134592), //final ruta 2
    ],
  ];

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    final position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.high);
    setState(() {
      _center = LatLng(position.latitude, position.longitude);
    });
  }

  void _moveToNewLocation(LatLng newLocation) {
    mapController.animateCamera(
      CameraUpdate.newLatLng(newLocation),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Rutas!'),
      ),
      body: Center(
        child: SizedBox(
          width: MediaQuery.of(context).size.width * 0.8,
          height: MediaQuery.of(context).size.height * 0.7,
          child: GoogleMap(
            initialCameraPosition: CameraPosition(
              target: _center,
              zoom: 11.0,
            ),
            onMapCreated: (GoogleMapController controller) {
              mapController = controller;
            },
            markers: {
              Marker(
                markerId: const MarkerId('user_location'),
                position: _center,
                onTap: () {},
              ),
            },
            polylines: {
              for (int i = 0; i < _rutasGuardadas.length; i++)
                Polyline(
                  polylineId: PolylineId('ruta_$i'),
                  color: Colors.blue,
                  width: 3,
                  points: _rutasGuardadas[i],
                  onTap: () {
                    _mostrarImagen(context, 'assets/Rutas/Ruta${i + 1}.png');
                  },
                ),
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _moveToNewLocation(_center);
        },
        child: const Icon(Icons.location_searching),
      ),
    );
  }

  void _mostrarImagen(BuildContext context, String imagen) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          content: Image.asset(
            imagen,
            fit: BoxFit.cover,
          ),
        );
      },
    );
  }
}
