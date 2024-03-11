import 'package:flutter/material.dart';
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
                primary: const Color.fromARGB(96, 59, 59, 59), 
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 18), 
              ),
              child: Text('Iniciar Session'),
            ),
            SizedBox(height: 20), 
            ElevatedButton(
              onPressed: () {
                
              },
              style: ElevatedButton.styleFrom(
                primary: const Color.fromARGB(96, 59, 59, 59), 
                onPrimary: Colors.white,
                textStyle: TextStyle(fontSize: 18), 
              ),
              child: Text('Registrarte'),
            ),
          ],
        
        ),
       
      
      ),
    );
  }
}