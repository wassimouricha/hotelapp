import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF00b8ff);

void main() {
  runApp(MonApp());
}

class MonApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //literallement une application qui utilise le material design
      debugShowCheckedModeBanner:
          false, //permet de retirer la banniere debug en haut a droite
      title: "NC Hotel Booking ",
      home: HomePage(),
    );
  }
}

//on va déclarer la page de notre Homepage
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: d_blue,
      appBar: MyAppBar(),
      body: Container(),
    );
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  String titreDeApp = "NC Hotel Booking";

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: d_lightblue,
            size: 20,
          ),
          onPressed: null,
        ),
        title: Text(titreDeApp),
        backgroundColor: Color(0xFFfcec0c));
  }
}
