import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:roadrealm/US10_Creacion%20de%20los%20mapas/mapas.dart';
import 'package:roadrealm/US6_interfaz_grafica_eventos/pagina_eventos.dart';

// ignore: camel_case_types
class Pagina_Inicial extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const Pagina_Inicial({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Fondo de la pantalla \\
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image:
                    AssetImage('assets/ImagenesFondo/FondoPaginaInicial.jpg'),
                fit: BoxFit.cover,
              ),
            ),
          ),

          // Filtro de desenfoque \\
          Container(
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 86, 86, 86).withOpacity(0.5),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
              child: Container(
                color: const Color.fromARGB(0, 129, 129, 129),
              ),
            ),
          ),

          // Logo \\
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _pasarPagina(context, "assets/Logo/Road_Realm_Logo.png"),
                ],
              ),
              const SizedBox(height: 5),

              // Botones \\
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const Pagina_Inicial(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 220, 220, 220)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(500, 100)),
                    ),
                    child: const Text(
                      'Registrate',
                      style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 58, 58, 58)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const MapaPage(),
                        ),
                      );
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Color.fromARGB(255, 202, 202, 202)),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                      minimumSize:
                          MaterialStateProperty.all(const Size(500, 100)),
                    ),
                    child: const Text(
                      'Iniciar Sesion',
                      style: TextStyle(fontSize: 50, color: Color.fromARGB(255, 58, 58, 58)),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),

              // Politica de privacidad y Contacto\\
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () {
                        (context) => const Pagina_Inicial();
                      },
                      child: const Text(
                        'Política de privacidad',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 0, 81, 255)),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  Container(
                    color: Colors.white,
                    padding: const EdgeInsets.all(8),
                    child: TextButton(
                      onPressed: () {
                        (context) => const Pagina_Inicial();
                      },
                      child: const Text(
                        'Contacto',
                        style: TextStyle(
                            fontSize: 24,
                            color: Color.fromARGB(255, 0, 81, 255)),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Widget ruta imagenes \\
  Widget _pasarPagina(BuildContext context, String item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Pagina_Eventos(),
          ),
        );
      },
      child: Image.asset(
        item,
        width: 500,
        height: 500,
      ),
    );
  }
}
