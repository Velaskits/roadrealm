
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class ServeiAuth{

    final FirebaseAuth _auth = FirebaseAuth.instance;
     final FirebaseFirestore _firestore = FirebaseFirestore.instance;


  //Login
  Future<UserCredential> logincreado(String Correo,Contrasena) async{
    try{
      UserCredential credentialUser = await _auth.signInWithEmailAndPassword(
        email:Correo,
         password: Contrasena);
         _firestore.collection("Usuaris").doc(credentialUser.user!.uid).set(
        {
          "uid": credentialUser.user!.uid,
          "email" : Correo,
        }
      );
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
         _firestore.collection("Usuaris").doc(credentialUser.user!.uid).set(
        {
          "uid": credentialUser.user!.uid,
          "email" : Correo,
        }
      );

          return credentialUser;

      } on FirebaseAuthException catch(e){{
        throw Exception(e.code);
      }}
    }

}