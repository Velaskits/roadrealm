import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roadrealm/US4_Modificar/modificarusuario.dart';

// ignore: camel_case_types
class Pagina_Eventos extends StatelessWidget {
  Pagina_Eventos({Key? key}) : super(key: key);

  final List<Map<String, String>> eventos = [
    {
      'imagePath': 'assets/Eventos/Evento1.jpg',
      'titulo': 'Carrera de coches (deportivos)',
      'descripcion': '¡Experimenta la velocidad y la emoción en nuestra Carrera de Coches Deportivos!',
      'descripcion1': 'Disfruta de la competencia entre elegantes y potentes automóviles en un evento lleno de adrenalina y emoción.',
      'descripcion2': '¡No te lo pierdas!',
    },
    {
      'imagePath': 'assets/Eventos/Evento2.jpg',
      'titulo': 'Ruta conjunta en la montaña',
      'descripcion': 'Embárcate en nuestra Ruta Conjunta en la Montaña y   ',
      'descripcion1': 'descubre la majestuosidad de la naturaleza mientras exploras senderos montañosos.',
      'descripcion2': '¡Una aventura emocionante llena de paisajes impresionantes y adrenalina te espera en cada curva!',
    },
    {
      'imagePath': 'assets/Eventos/Evento3.jpg',
      'titulo': 'Carrera de buggys en tierra',
      'descripcion': 'Únete a la emocionante Carrera de Buggys en Tierra y experimenta la velocidad',
      'descripcion1': 'y la emoción mientras compites en terrenos desafiantes.',
      'descripcion2': '¡Prepárate para una competencia llena de acción que te dejará sin aliento!',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(145, 166, 166, 166),
        leading: Expanded(
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Image.asset(
              "assets/Logo/Road_Realm_Logo.png",
              width: 40,
              height: 40,
            ),
          ),
        ),
        title: const Center(
          child: Text(
            "Eventos!",
            style: TextStyle(
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        actions: <Widget>[
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const ModificarUsuario(),
                ),
              );
            },
            child: const Text('Nombre Usuario'),
          ),
        ],
        toolbarHeight: 80,
      ),
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  'assets/ImagenesFondo/FondoPaginaEventos.jpg',
                ),
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
                color: const Color.fromARGB(21, 129, 129, 129),
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CarouselSlider(
                options: CarouselOptions(
                  height: 400.0,
                  autoPlay: false,
                  aspectRatio: 16 / 9,
                  autoPlayCurve: Curves.fastOutSlowIn,
                  autoPlayAnimationDuration:
                      const Duration(milliseconds: 800),
                  enableInfiniteScroll: false,
                  viewportFraction: 0.8,
                ),
                items: eventos.map((evento) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin:
                            const EdgeInsets.symmetric(horizontal: 5.0),
                        child: AspectRatio(
                          aspectRatio: 16 / 9, // Mantener la misma relación de aspecto
                          child: Container(
                            decoration: const BoxDecoration(
                              color:  Color.fromARGB(0, 62, 62, 62),
                            ),
                            child: Stack(
                              children: [
                                Image.asset(
                                  evento['imagePath']!,
                                  fit: BoxFit.fitWidth, // Hacer que la imagen se estire horizontalmente
                                ),
                                Positioned(
                                  bottom: 20,
                                  left: 20,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        evento['titulo']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 20,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor: Color.fromARGB(175, 0, 0, 0),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        evento['descripcion']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor: Color.fromARGB(175, 0, 0, 0),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        evento['descripcion1']!,
                                        style: const TextStyle(
                                          color: Colors.white,
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor: Color.fromARGB(175, 0, 0, 0),
                                        ),
                                      ),
                                      const SizedBox(height: 5),
                                      Text(
                                        evento['descripcion2']!,
                                        style: const TextStyle(
                                          color: Color.fromARGB(255, 0, 174, 20),
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold,
                                          backgroundColor: Color.fromARGB(174, 0, 0, 0),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    },
                  );
                }).toList(),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
