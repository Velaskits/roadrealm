import 'package:flutter/material.dart';
import 'package:roadrealm/US1_Registre/registre.dart';

void main() {
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
 
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Registre(),
       );
  }
}
