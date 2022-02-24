import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/calendar_page.dart';
import 'package:hotelapp/konpeki.dart';

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
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      color: Colors.grey[100],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 10),
      child: Column(
        children: [
          Row(
            children: [
              //dans mon row il y a le widget textfield et le widget elevatedbutton
              Expanded(
                //widget responsive qui s'adapte au autres widget
                child: Container(
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
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Calendrier();
                    }));  //en écrivant cette synthaxe j'indique que lorsque l'on clique sur le bouton ça redirige vers la page calendrier
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
          Row(
            mainAxisAlignment:
                MainAxisAlignment.spaceBetween, //permet l'alignement
            children: [
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Choisir la date",
                        style: GoogleFonts.nunito(
                          color: d_redus,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "22 dec - 28 dec",
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      )
                    ]),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Column(
                    crossAxisAlignment:
                        CrossAxisAlignment.start, //permet l'alignement
                    children: [
                      Text(
                        "Nombre de chambres",
                        style: GoogleFonts.nunito(
                          color: d_redus,
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "1 adulte - 2 adultes",
                        style: GoogleFonts.nunito(
                          color: Colors.black,
                          fontSize: 17,
                        ),
                      )
                    ]),
              )
            ],
          ),
        ],
      ),
    );
  }
}

//section hotel
class hotelSection extends StatelessWidget {
  final List hotelList = [
    {
      "titre": "Konpeki Plaza",
      "Localisation": "Corpo Plaza, Night City",
      "distance": 2,
      "review": 522,
      "photo": "assets/hotel2.jpeg",
      "prix": "800"
    },
    {
      "titre": "Hoteru",
      "Localisation": "Watson, Night City",
      "distance": 1,
      "review": 42,
      "photo": "assets/hotel1.jpg",
      "prix": "15"
    },
    {
      "titre": "Biotechnica Hotel",
      "Localisation": "JapanTown, Night City",
      "distance": 4,
      "review": 622,
      "photo": "assets/hotel3.jpg",
      "prix": "650"
    },
    {
      "titre": "No Tell Motel",
      "Localisation": "Pacifica, Night City",
      "distance": 6,
      "review": 122,
      "photo": "assets/hotel4.jpg",
      "prix": "60"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      color: Colors.grey[100],
      child: Column(
        children: [
          Container(
            height: 50,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "4 hotels trouvés",
                  style: GoogleFonts.nunito(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Row(
                  children: [
                    Text(
                      "Filtres",
                      style: GoogleFonts.nunito(
                        color: Colors.black,
                        fontSize: 15,
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        Icons.filter_list_outlined,
                        color: d_redus,
                        size: 25,
                      ),
                      onPressed: null,
                    ),
                  ],
                )
              ],
            ),
          ),
          Column(
            children: hotelList.map((hotel) {
              //j'appelle le contenu du tableau de ma variable hotelist, on parcours la liste avec map et en dessous on renvoie le widget hotelCard
              return hotelCard(hotel);
            }).toList(),
          )
        ],
      ),
    );
  }
}

//ici je vais creer le widget des cartes

class hotelCard extends StatelessWidget {
  final Map hotelData;
  hotelCard(this.hotelData);
  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        height: 230,
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
        ),
        child: Column(
          children: [
            GestureDetector(
                onTap: null, //gesture detector et ontap permet de passer vers un autre liens en detectant le fait de clicquer 
              child: Container(
                
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  image: DecorationImage(
                    image: AssetImage(
                      hotelData['photo'],
                    ),
                    
                    fit: BoxFit
                        .cover, 
                        //permet a l'image de prendre l'entiereté du container
                  ),
                ),
                child: Stack(
                  //widget button qui sera superposé au dessus
                  children: [
                    Positioned(
                        top: 8,
                        right: -15,
                        child: MaterialButton(
                          color: d_yellow,
                          shape: CircleBorder(),
                          onPressed: () {},
                          child: Icon(
                            Icons.favorite_outline_rounded,
                            color: d_redus,
                            size: 20,
                            
                          ),
                        ))
                  ],
                ),
                
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotelData['titre'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    " \$" + hotelData['prix'],
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    hotelData['Localisation'],
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.grey[500],
                    ),
                  ),
                  Row(
                    children: [
                      Icon(
                        Icons.place,
                        color: d_redus,
                        size: 14.0,
                      ),
                      //toString va permettre de transformer ma variable nombre en chaine de caractère
                      Text(
                        hotelData['distance'].toString() + " km ",
                        style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey[500],
                        ),
                      ),
                    ],
                  ),
                  Text("par nuit",
                      style: GoogleFonts.nunito(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey.shade800)),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(10, 3, 10, 0),
              child: Row(
                children: [
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    hotelData['review'].toString() + " Avis ",
                    style: GoogleFonts.nunito(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                        color: Colors.grey[500]),
                  ),
                ],
              ),
            ),
          ],
        ));
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
              
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child:
                Text(
               
                    "Cliquez sur le bouton pour lire la description des lieux",
                    style: GoogleFonts.nunito(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                      
                    ),
                  ),
                  ),
             
              Container(
                 padding: EdgeInsets.fromLTRB(0, 0, 0, 1),
                height: 50,
                width: 50,
                
                decoration: BoxDecoration(
                
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  color: d_redus,
                ),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Konpeki();
                    }));  //en écrivant cette synthaxe j'indique que lorsque l'on clique sur le bouton ça redirige vers la page calendrier
                  } ,
                  
                  child: 
                  Icon(
                    Icons.adjust,
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
         
        ],
      ),
    );
  }
}