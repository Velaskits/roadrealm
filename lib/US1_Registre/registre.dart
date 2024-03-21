import 'dart:js';

import 'package:flutter/material.dart';
import 'package:roadrealm/US2_Login/login.dart';
import 'package:roadrealm/auth/servei_auth.dart';

class Registrarse extends StatelessWidget {
  final bool obscureText;
   Registrarse({
    super.key,
   this.obscureText = false,
   });

  final TextEditingController controllerEmail = TextEditingController();
  final TextEditingController controllerPassword = TextEditingController();
  final TextEditingController controllerNombre = TextEditingController();
  final TextEditingController controllerApellido = TextEditingController();
  
  



void ferRegistre(BuildContext context) async{
   final serveiAuth = ServeiAuth();
    
    try{
      serveiAuth.registrocreado(
        controllerEmail.text, 
        controllerPassword.text,
        controllerNombre.text,
        controllerApellido.text,
        
        );
    }catch(e){
      showDialog(
        context: context,
       builder: (context) =>  AlertDialog(
        title: const Text("Error"),
        content: Text(e.toString()),
       ),
       );
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(82, 56, 56, 56),
        leading: GestureDetector(
          child:
              _pasarPagina_Inicial(context, 'assets/Logo/Road_Realm_Logo.png'),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Login()),
              );
            },
            child: const Text(
              'Iniciar Sesión',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.pop(context);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) =>  Registrarse()),
              );
            },
            child: const Text(
              'Registrarse',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
              ),
            ),
          ),
        ],
        title: const Center(
          child: Text(
            "Road Realm",
            style: TextStyle(
              color: Color.fromARGB(171, 0, 0, 0),
              fontSize: 38,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'),
            fit: BoxFit.cover,
          ),
        ),
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    "Registrarte",
                    style: TextStyle(
                      color: Color.fromARGB(171, 255, 255, 255),
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Nombre',controllerNombre,false),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Apellido',controllerApellido,false),
                ),
                const SizedBox(height: 16),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Contraseña',controllerPassword,true),
                  
                 
                ),
                const SizedBox(height: 16),
               
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Correo',controllerEmail,false),
                ),
                const SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () => ferRegistre(context)/*() {
                    Navigator.pop(context);
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>  Registrarse(),
                        ));
                  }*/,
                  child: const Text(
                    'Registrarse',
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

  Widget _pasarPagina_Inicial(BuildContext context, String item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) =>  Registrarse(),
          ),
        );
      },
      child: Image.asset(
        item,
        width: 100,
        height: 100,
      ),
    );
  }

  Widget _ColorTextos(String labelText, TextEditingController controller, obscureText) {
    return TextField(
       obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
      ),
    );
  }
}
