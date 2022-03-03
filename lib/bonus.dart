// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF25E1ED);
const d_redus = Color(0xFFFF4A57);
const d_yellow = Color(0xFFfcec0c);




class Bonus extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Color(0xff040204),
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: //SingleChildScrollView permet d'empecher l'erreur d'overflow et donc de scroller

              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //car on va avoir plusieurs widget à l'intérieur
              Card(),
            
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  String titreDeApp = "NC Hotel Booking";
  String explore = "Bonus Stage";

  

  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: d_lightblue,
            size: 20,
          ),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return HomePage();
            })); //en écrivant cette synthaxe j'indique que lorsque l'on clique sur le bouton ça redirige vers la page calendrier
          },
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


class descriptionD extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child:
      
      Column(
        crossAxisAlignment:
                        CrossAxisAlignment.center,
        children: 
      [Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(
        
        "",
        style: GoogleFonts.nunito(
          color: d_redus,
          fontSize: 18,
          fontWeight: FontWeight.w500,
        ),
      ),
        Row(
                    children: [
                      Icon(
                        Icons.star_rate,
                        color: d_redus,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: d_redus,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: d_redus,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.star_border,
                        color: d_redus,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.star_border,
                        color: d_redus,
                        size: 14.0,
                      ),
                    ],
                  ),
      ]),),
      SizedBox(height:5),
       ClipRRect(
  borderRadius: BorderRadius.circular(20),
  
  child: 
  
  // Image.network("https://i.giphy.com/media/pylNZOmEWUMwGXdzQj/200w.webp"),
    new Image(image: new AssetImage("assets/cyber-punk2077samurai-dragon.gif"), height:200, width:200,),
),
     
       SizedBox(height:5),
      
          Text(
        "Wake up Samurai... ",
        textAlign: TextAlign.center,
        style: GoogleFonts.nunito(
          color: Colors.white,
          fontSize: 15,
          fontWeight: FontWeight.w500,
          
        ),
      ),
     
      
      ]),
     
    );
  }
}



class Card extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        margin: EdgeInsets.all(10),
        
        width: double.infinity,
        decoration: BoxDecoration(
          color: Color(0xff040204),
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color:  Color(0xff040204),
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        )
        ,child: descriptionD(),);
        
            
         
                
        
  }
}