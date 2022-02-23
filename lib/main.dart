import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_blue = Color(0xFF136377);

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(  //literallement une application qui utilise le material design
      debugShowCheckedModeBanner: false, //permet de retirer la banniere debug en haut a droite
      title: "NC Hotel Booking ",
      home: Scaffold(
        backgroundColor: d_blue,
        
        appBar: AppBar(title: Text("NC Hotel Booking"), backgroundColor: Color(0xFFfcec0c),),

      ),
    ); 
   
  }
}
