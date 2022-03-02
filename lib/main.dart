// ignore_for_file: must_be_immutable

import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/calendar_page.dart';
import 'package:hotelapp/konpeki.dart';
import 'package:hotelapp/delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hotelapp/konpekiplaza.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF25E1ED);
const d_redus = Color(0xFFFF4A57);
const d_yellow = Color(0xFFfcec0c);

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
        backgroundColor:  Colors.grey[100],
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: //SingleChildScrollView permet d'empecher l'erreur d'overflow et donc de scroller
              Column(
            children: [
              //car on va avoir plusieurs widget à l'intérieur
              
              chercheSection(),
              description(),
              hotelSection(),
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  String titreDeApp = "NC Hotel Booking";
  String explore = "Accueil";

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
  // AccessToken? _accessToken ==> connections facebook abandonné pour l'instant

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 330,
      color: Colors.grey[100],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: 
      delayedAnimation(delay: 1000, child: 
      Column(
        children: [
          Row(
            children: [
              //dans mon row il y a le widget textfield et le widget elevatedbutton
              Expanded(
                //widget responsive qui s'adapte au autres widget
                child: 
                
                Container(
                  padding: EdgeInsets.only(left: 5),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.shade300,
                          blurRadius: 4,
                          offset: Offset(0, 3),
                        ),
                      ]),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: "Visitez les différents hotels de night city",
                        contentPadding: EdgeInsets.all(10),
                        border: InputBorder.none),
                  ),
                ),
              ), //ici c'est mon champ de texte
              SizedBox(
                width: 10,
              ),
              Container(
                height: 50,
                width: 50,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade300,
                      blurRadius: 4,
                      offset: Offset(0, 4),
                    ),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                ),
                child: ElevatedButton(
                  onPressed: () {
                  //en écrivant cette synthaxe j'indique que lorsque l'on clique sur le bouton ça redirige vers la page calendrier
                  },
                  child: Icon(
                    Icons.search,
                    size: 26,
                    color: d_lightblue,
                  ),
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(10),
                    primary: d_redus,
                  ),
                ),
                
              ),
            ],
          ),
          SizedBox(height: 10), //pour espacer les widgets
         delayedAnimation(
          delay: 1500,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 14),
            child: Column(children: [
              Text("Connectez-vous afin d'enregistrer votre profil dans la base de donnée",
              textAlign: TextAlign.center,
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                ),),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: Color(0xFF4267B2),
                    padding: EdgeInsets.all(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.facebook),
                      SizedBox(width: 10),
                      Text(
                        "Facebook",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),
                  SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Calendrier();
                    })); 
                    
                  },
                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: d_lightblue,
                    padding: EdgeInsets.all(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.calendar),
                      SizedBox(width: 10),
                      Text(
                        "Calendrier des disponibilitées",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),

            ]),
          ),
        ),
        ],
      ),
    ),);
  }
}



class description extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
      color: Colors.grey[100],
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: 
      Column(
        children: [
          
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            
            children: [
              delayedAnimation(delay: 2000, child: 
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child:
                ElevatedButton(
                  onPressed: () {
                     Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Konpeki();
                  },));},

                  style: ElevatedButton.styleFrom(
                    shape: StadiumBorder(),
                    primary: d_redus,
                    padding: EdgeInsets.all(14),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FaIcon(FontAwesomeIcons.handsHelping , ),
                      SizedBox(width: 10),
                      Text(
                        "Description détaillé",
                        style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      )
                    ],
                  )),
                  ),
              ),
              

            ],
          ),
         
        ],
      ),
    );
  }
}