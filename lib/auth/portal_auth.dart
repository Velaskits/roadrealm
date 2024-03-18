import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:roadrealm/US1_Registre/registre.dart';
import 'package:roadrealm/US2_Login/login.dart';

class PortalAuth extends StatelessWidget {
  const PortalAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
            if(snapshot.hasData){
              return const Login();
            }else{
              return  Registrarse();
            }
        },
      ),
    );
  }
}