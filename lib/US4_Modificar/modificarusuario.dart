import 'package:flutter/material.dart';
import 'package:roadrealm/US7_interfaz_grafica_inicio/pagina_inicio.dart';

class ModificarUsuario extends StatefulWidget {
  const ModificarUsuario({super.key});

  @override
  State<ModificarUsuario> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ModificarUsuario> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(145, 166, 166, 166),
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
      ),
      body: Padding(
        padding: const EdgeInsets.all(55.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.only(bottom: 55.0),
              child: const CircleAvatar(
                radius: 100,
                backgroundImage: AssetImage('assets/ModificarCuentarImag/avatarDefault.jpg'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
