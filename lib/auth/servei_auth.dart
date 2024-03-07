
import 'package:firebase_auth/firebase_auth.dart';

class ServeiAuth{

    final FirebaseAuth _auth = FirebaseAuth.instance;


  //Login
  Future<UserCredential> logincreado(String Correo,Contrasena) async{
    try{
      UserCredential credentialUser = await _auth.signInWithEmailAndPassword(
        email:Correo,
         password: Contrasena);
         return credentialUser;
    } on FirebaseAuthException catch(e){
      throw Exception(e.code);
    }
  }

  //Registre
    Future<UserCredential> registrocreado(String Correo,Contrasena) async{
      try{
        UserCredential credentialUser = await _auth.createUserWithEmailAndPassword(
          email: Correo,
          password: Contrasena
          );


          return credentialUser;

      } on FirebaseAuthException catch(e){{
        throw Exception(e.code);
      }}
    }

}