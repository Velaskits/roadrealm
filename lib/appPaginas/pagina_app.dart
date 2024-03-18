import 'package:flutter/material.dart';
import 'package:roadrealm/appPaginas/appRegistro.dart';
import 'package:roadrealm/appPaginas/appSessio.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       
      ),
      body: Center(
        child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
            Image.asset(
              'assets/Logo/Road_Realm_Logo.png',
              width: 500,
              height: 500,
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AppSessio()),
              );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 253, 253, 253),
                textStyle: TextStyle(fontSize: 18), 
                backgroundColor: Color.fromARGB(255, 63, 63, 63),
              ),
              child: Text('Iniciar Session'),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
                Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const AppRegistro()),
                );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Color.fromARGB(255, 253, 253, 253),
                textStyle: TextStyle(fontSize: 18), 
                backgroundColor: Color.fromARGB(255, 63, 63, 63),
              ),
              child: Text('Registrarte'),
            ),
          ],
        
        ),
       
      
      ),
    );
    
  }
  
}