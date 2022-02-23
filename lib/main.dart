import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF25E1ED);
const d_redus = Color(0xFFFF4A57);

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
        body: SingleChildScrollView(
          child: //SingleChildScrollView permet d'empecher l'erreur d'overflow et donc de scroller
              Column(
            children: [
              //car on va avoir plusieurs widget à l'intérieur
             chercheSection(),
             hotelSection(),
             
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  String titreDeApp = "NC Hotel Booking";
  String explore = "Explorer";

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
        title: Text(
          explore,
          style: GoogleFonts.kanit(
              color: d_lightblue, fontSize: 22, fontWeight: FontWeight.w500),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.favorite_outline_rounded,
              color: d_lightblue,
              size: 20,
            ),
            onPressed: null,
          ),
          IconButton(
            icon: Icon(
              Icons.place,
              color: d_lightblue,
              size: 20,
            ),
            onPressed: null,
          ),
        ],
        centerTitle: true,
        backgroundColor: Color(0xFFfcec0c));
  }
}

//je vais déclarer séparement les deux sections
//section recherche
class chercheSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: d_lightblue,
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(children: [
            Expanded( //widget responsive qui s'adapte au autres widget
              child: 
              Container( 
                padding: EdgeInsets.only(left: 5),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0,3),
                    ),
                  ]),
                child: TextField(
                  decoration: InputDecoration(hintText: "Visitez les différents hotels de night city", contentPadding: EdgeInsets.all(10),
                  border: InputBorder.none),
                ),),), //ici c'est mon champ de texte
                SizedBox(width: 10,),
            Container(
              height: 50, 
              width: 50,
              decoration: BoxDecoration(
                boxShadow: [
                    BoxShadow(
                      color: Colors.grey,
                      blurRadius: 4,
                      offset: Offset(0,4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                color:d_redus,),
                child: ElevatedButton(
                  onPressed: null, 
                    child: Icon(Icons.search), 
                      style: ElevatedButton.styleFrom(
                         shape: CircleBorder(),
                ),),
              ),
          ],),
          SizedBox(height: 50),
          Container(height: 50, color:Colors.red),
        ],),
    );
  }
}
//section hotel
class hotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2000,
      color: Colors.lightBlue
    );
  }
}

