import 'package:flutter/material.dart';
import 'package:roadrealm/US1_Registre/registre.dart';

class Login extends StatelessWidget {
  const Login({super.key});

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
                MaterialPageRoute(builder: (context) => const Login()),
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
          child: Text("Road Realm",
          style: TextStyle(
           color:Color.fromARGB(171, 0, 0, 0), 
            fontSize: 38,
            fontWeight: FontWeight.bold,
          ),
          ),
        ),
        ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo_login.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            width: 400,
            height: 400,
            decoration: BoxDecoration(
              color: const Color.fromARGB(171, 71, 71, 71),
              borderRadius: BorderRadius.circular(10.0),
               border: Border.all(
                color: const Color.fromARGB(255, 255, 255, 255),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              
              children: [
                const Text(
                  "Iniciar Sesion",
                  style: TextStyle(
                    color:Color.fromARGB(171, 255, 255, 255), 
                      fontSize: 38,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Correo'),
                ),
                const SizedBox(height: 26),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: _ColorTextos('Contraseña'),
                ),
                const SizedBox(height: 26),
                ElevatedButton(
                  onPressed: () {
                      Navigator.pop(context);
                      Navigator.push(
                      context,
                       MaterialPageRoute(builder: (context) => Login(),));
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

  Widget _pasarPagina_Inicial(BuildContext context, String item) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => const Login(),
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

  Widget _ColorTextos(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white,
        labelStyle: const TextStyle(
          color: Color.fromARGB(255, 8, 8, 8),
        ),
      ),
    );
  }
}
