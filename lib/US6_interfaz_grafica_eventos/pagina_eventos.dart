import 'dart:ui';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:roadrealm/US7_interfaz_grafica_inicio/pagina_inicio.dart';

// ignore: camel_case_types
class Pagina_Eventos extends StatelessWidget {
  const Pagina_Eventos({Key? key}) : super(key: key);

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
                // Lógica para el botón
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
                  image:
                      AssetImage('assets/ImagenesFondo/FondoPaginaEventos.jpg'),
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
                  items: [
                    'assets/Eventos/Evento1.jpg',
                    'assets/Eventos/Evento2.jpg',
                    'assets/Eventos/Evento3.jpg',
                  ].map((String path) {
                    return Builder(
                      builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          margin: const EdgeInsets.symmetric(horizontal: 5.0),
                          decoration: const BoxDecoration(
                            color: Colors.amber,
                          ),
                          child: Image.asset(
                            path,
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  }).toList(),
                ),
              ],
            ),
          ],
        )
      );
  }

  Widget cambiarImagenes(BuildContext context, String item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Pagina_Eventos(),
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
