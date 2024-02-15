import 'package:flutter/material.dart';
import 'package:roadrealm/US7_interfaz_grafica_inicio/pagina_inicio.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pagina_Inicial(),
    );
  }
}
