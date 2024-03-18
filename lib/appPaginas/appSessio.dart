import 'package:flutter/material.dart';
import 'package:roadrealm/appPaginas/appDentro.dart';
import 'package:roadrealm/appPaginas/pagina_app.dart';

class AppSessio extends StatelessWidget {
  const AppSessio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
      ),
      body: Container(
         child: Center(
           child: Container(
            width: 400,
            height: 650,
            decoration: BoxDecoration(
              color: const Color.fromARGB(171, 71, 71, 71),
              borderRadius: BorderRadius.circular(10.0),
              border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Iniciar Session",
                    style: TextStyle(
                      color: Color.fromARGB(255, 252, 252, 252),
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
            const SizedBox(height: 20), 
             Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Correo'),
                ),
                const SizedBox(height: 16),
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Contraseña'),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  AppDentro(),
                        ));
                  },
                  child: const Text(
                    'Iniciar',
                    style: TextStyle(
                      color: Color.fromARGB(255, 83, 83, 83),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
          ],
        
        ),
      ),
    ),
      ),
    );
  }
  Widget _ColorTextos(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
      ),
    );
}
}