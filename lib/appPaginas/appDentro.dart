import 'package:flutter/material.dart';
import 'package:roadrealm/appPaginas/pagina_app.dart';

class AppDentro extends StatelessWidget {
  const AppDentro ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 112, 112, 112),
              ),
              child: Text(
                'Menú',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              title: const Text(
                'Perfil',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),

              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(),
                  ),
                );
              },
            ),
             ListTile(
              title: const Text(
                'Pagina Web',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => NextPage(),
                  ),
                );
              },
            ),
            ListTile(
              title: const Text(
                'Reportar Incidencia',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
             
              onTap: () {
                
                Navigator.pop(context); 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AnotherPage(),
                  ),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
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
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              SizedBox(height: 8),
              Text(
                "Road Realm",
                style: TextStyle(
                  color: Color.fromARGB(255, 252, 252, 252),
                  fontSize: 38,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Página siguiente'),
      ),
    );
  }
}

class AnotherPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const Center(
        child: Text('Otra página'),
      ),
    );
  }
}
