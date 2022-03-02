// ignore_for_file: must_be_immutable

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
        backgroundColor: Colors.grey[100],
        appBar: MyAppBar(),
        body: SingleChildScrollView(
          child: //SingleChildScrollView permet d'empecher l'erreur d'overflow et donc de scroller

              Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //car on va avoir plusieurs widget à l'intérieur
              titre(),
              slider(),
              Card(),
              Card2(),
              Card3()
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

class titre extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Text(
        "Les  hotels  de Night City",
        style: GoogleFonts.nunito(
          color: d_lightblue,
          fontSize: 17,
          fontWeight: FontWeight.w500,
        ),
      ),
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
                            Image.asset(item,
                                fit: BoxFit.cover, width: 1000.0),
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

class descriptionK extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child:
      
      Column(
        crossAxisAlignment:
                        CrossAxisAlignment.start,
        children: 
      [Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(
        
        "Le Konpeki Plaza ",
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
                        Icons.star_rate,
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
  child: Image.asset(
    
      "assets/hotel2.jpeg",
  ),
),
      
       SizedBox(height:5),
      
          Text(
        "Le Konpeki Plaza est une chaîne mondiale d'hôtels de luxe dont certains sont situés à Tokyo, Paris, Singapour,Washington et Night City.",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height:5),
       Text(
        "Elle se présente comme l'hôtel pour l'élite corpo du monde, et se vante de combiner la « grandeur américaine » et le « minimalisme japonais » La société possède des liens étroits avec Arasaka, qui lui fournit notamment ses gardes de sécurité.",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height:5),
       Text(
        "Le site de Night City est fréquenté par des cadres corpo qui viennent de l'extérieur de la ville, et le bar du hall est un endroit populaire où ils peuvent se mêler aux plus grands de Night City, y compris le maire. Le bâtiment compte 80 étages, 420 chambres, 20 salles de conférence et un penthouse au dernier étage réservé aux VIP. ",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height:5),
       Text(
        " Les clients ont accès 24 heures sur 24 au bar, à une galerie d'art, à un sauna, à une piscine, à une salle de sport, à un salon de massage, à un salon de danse sensoriellerécemment ouvert, et à d'autres installations aux étages inférieurs.",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      ]),
     
    );
  }
}

class descriptionB extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child:
      
      Column(
        crossAxisAlignment:
                        CrossAxisAlignment.start,
        children: 
      [Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(
        
        "Biotechnica Hotel",
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
                        Icons.star_rate,
                        color: d_redus,
                        size: 14.0,
                      ),
                      Icon(
                        Icons.star_rate,
                        color: d_redus,
                        size: 14.0,
                      ),
                    ],
                  ),
      ]),),
      SizedBox(height:5),
       ClipRRect(
  borderRadius: BorderRadius.circular(20),
  child: Image.asset(
    
      "assets/hotel3.jpg",
  ),
),
    
       SizedBox(height:5),
      
          Text(
        "L'hôtel Biotechnica est situé dans Downtown, City Center, Night City. L'hôtel est détenu et exploité par Biotechnica, y compris la sécurité. ",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      SizedBox(height:5),
       Text(
        "Seuls les employés de la société peuvent obtenir des appartements dans cet hôtel.",
        style: GoogleFonts.nunito(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w500,
        ),
      ),
      
      ]),
     
    );
  }
}

class descriptionC extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5,horizontal: 5),
      child:
      
      Column(
        crossAxisAlignment:
                        CrossAxisAlignment.start,
        children: 
      [Container(child: Row(
       mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [Text(
        
        "NoTell Motel",
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
                        Icons.star_border,
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
  child: Image.asset(
    
      "assets/hotel4.jpg",
  ),
),
     
       SizedBox(height:5),
      
          Text(
        "L'hôtel fonctionne grâce à une intelligence artificielle et est connu pour abriter des affaires louches faites par des personnes qui préfèrent ne pas être vues.",
        style: GoogleFonts.nunito(
          color: Colors.black,
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
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        )
        ,child: descriptionK(),);
        
            
         
                
        
  }
}

class Card2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        margin: EdgeInsets.all(10),
        
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        )
        ,child: descriptionB(),);
        
            
         
                
        
  }
}

class Card3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      
        margin: EdgeInsets.all(10),
        
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(18)),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.shade200,
              spreadRadius: 4,
              blurRadius: 6,
              offset: Offset(0, 3),
            )
          ],
        )
        ,child: descriptionC(),);
        
            
         
                
        
  }
}