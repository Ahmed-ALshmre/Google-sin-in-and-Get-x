import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';


class GoogleSin extends StatefulWidget {
  @override
  _GoogleSinState createState() => _GoogleSinState();
}

class _GoogleSinState extends State<GoogleSin> {
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: FlatButton(
          child: Text('google'),
          onPressed: _googl,

        ),
      ),
    );
  }
  _googl() async{
    final GoogleSignInAccount googleUser= await googleSignIn.signIn();
    final GoogleSignInAuthentication  googleAuth =await googleUser.authentication;
    final AuthCredential credential = GoogleAuthProvider.getCredential(idToken: googleAuth.idToken, accessToken: googleAuth.accessToken);

    final FirebaseUser user = (await firebaseAuth.signInWithCredential(credential)).user;

    if(user== null){
      Navigator.pop(context);
      print(user);
    }else{
      print(user);
      Navigator.pop(context);

    }
  }
}
