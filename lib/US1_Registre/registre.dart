import 'package:flutter/material.dart';

class Registre extends StatelessWidget {
  const Registre({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(0, 0, 0, 0),
        leading: GestureDetector(
          child: _pasarPagina_Inicial(context, 'assets/Logo/Road_Realm_Logo.png'),
        ),
        title: Center(
          child: Text("Registre"),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fondo.png'), // Ruta de tu imagen de fondo
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
              
              child: Container(
                width: 300,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(height: 50),
                    _ColorTextos('Nombre'),
                    
                    SizedBox(height: 16),
                    _ColorTextos('Apellido'),
                    
                    SizedBox(height: 16),
                    _ColorTextos('Nombre Usuario'),
                    
                    SizedBox(height: 16),
                    _ColorTextos('Contraseña'),
                    
                    SizedBox(height: 16),
                    _ColorTextos('Correo'),
                  
                    SizedBox(height: 16),
                    ElevatedButton(
                      onPressed: () {},
                      child: Text('Registrarte'),
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
            builder: (context) => Registre(),
          ),
        );
      },
      child: Image.asset(
        item,
        width: 100, // Ajusta el ancho según tus necesidades
        height: 100, // Ajusta la altura según tus necesidades
      ),
    );

  }
  Widget _ColorTextos(String labelText) {
    return TextField(
      decoration: InputDecoration(
        labelText: labelText,
        filled: true,
        fillColor: Colors.white, // Ajusta el color de fondo según tus necesidades
      ),
    );
}
}