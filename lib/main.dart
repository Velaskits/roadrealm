import 'package:flutter/material.dart';
import 'package:roadrealm/US1_Registre/registre.dart';
import 'package:roadrealm/US2_Login/login.dart';
import 'package:roadrealm/US6_Mapa/pagina_mapa.dart';
import 'package:roadrealm/auth/portal_auth.dart';
import 'package:roadrealm/pagina_app.dart';

void main() {
  runApp(const MainApp());
  
}

class MainApp extends StatelessWidget {
 
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:App(),
       );
  }
}
