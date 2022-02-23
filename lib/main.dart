import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //literallement une application qui utilise le material design
      debugShowCheckedModeBanner: false, //permet de retirer la banniere debug en haut a droite
      title: "NC Hotel booking ",
      home: Container(
        color: Color(0xFFfcec0c),
      ),
    ); 
   
  }
}
