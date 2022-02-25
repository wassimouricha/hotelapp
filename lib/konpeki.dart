import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF25E1ED);
const d_redus = Color(0xFFFF4A57);
const d_yellow = Color(0xFFfcec0c);

final List<String> imgList = [
  'assets/hotel1.jpg',
  'assets/hotel2.jpeg',
  'assets/hotel3.jpg',
  'assets/hotel4.jpg',
  'assets/konpeki1.png',
  'assets/konpeki2.webp'
];



class Konpeki extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor:  Colors.grey[100],
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          
          child: //SingleChildScrollView permet d'empecher l'erreur d'overflow et donc de scroller
          
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                
            children: [
             
              
              //car on va avoir plusieurs widget à l'intérieur
              titre(),
             slider(),
            ],
          ),
        ));
  }
}

class MyAppBar extends StatelessWidget implements PreferredSizeWidget {
  Size get preferredSize => new Size.fromHeight(50);

  String titreDeApp = "NC Hotel Booking";
  String explore = "Description";

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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomePage();
                    }));  //en écrivant cette synthaxe j'indique que lorsque l'on clique sur le bouton ça redirige vers la page calendrier
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

class titre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
     
       
                padding: EdgeInsets.symmetric(vertical: 5),
                child:
                Text("Retrouvez vos hotels préférés de Night City",
              style: GoogleFonts.nunito(
                          
                          color: d_lightblue,
                          fontSize: 17,
                          fontWeight: FontWeight.w500,
                        ),),
              
     
    );
  }
}

class slider extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child:
        //le carousel à été intégré avec la demo sur la documentation du site de flutter 
      CarouselSlider(
          options: CarouselOptions(
            autoPlay: true,
            aspectRatio: 2.0,
            enlargeCenterPage: true,
          ),
          items: imgList
    .map((item) => Container(
          child: Container(
            margin: EdgeInsets.all(5.0),
            child: ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(5.0)),
                child: Stack(
                  children: <Widget>[
                    Image.network(item, fit: BoxFit.cover, width: 1000.0),
                    Positioned(
                      
                      left: 0,
                      right: 0,
                      child: Container(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [
                              Color.fromARGB(200, 0, 0, 0),
                              Color.fromARGB(200, 0, 0, 0)
                            ],
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                          ),
                        ),
                        padding: EdgeInsets.symmetric(
                            vertical: 5.0, horizontal: 20.0),
                        child: Text(
                          'v77',
                          style: TextStyle(
                            color: d_yellow,
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
          ),
        ))
    .toList(),
        ),
     
    );
  }
}