import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
      body: Center(
        
      ),
    );
  }
}