import 'package:flutter/material.dart';
import 'package:roadrealm/US7_interfaz_grafica_inicio/pagina_inicio.dart';

class Pagina_Eventos extends StatelessWidget {
  const Pagina_Eventos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 105, 105, 105),
        leading: Expanded(
          child: GestureDetector(
            
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Pagina_Inicial(),
                ),
              );
            },
            
            child: Image.asset(
              "assets/Logo/Road_Realm_Logo.png",
              width: 40,
              height: 40, 
            ),
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              // Lógica para el botón
            },
            child: Text('Nombre Usuario'), 
          ),
        ],
        toolbarHeight: 80,
      ),
      body: Container(),
    );
  }
}