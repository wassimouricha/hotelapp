import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/calendar_page.dart';
import 'package:hotelapp/konpeki.dart';
import 'package:hotelapp/delayed_animation.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

//section hotel

final List hotelList = [
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

//ici je vais creer le widget des cartes

class hoteruCard extends StatelessWidget {
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
              onTap:
                  null, //gesture detector et ontap permet de passer vers un autre liens en detectant le fait de clicquer
              child: Container(
                height: 140,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(18),
                      topRight: Radius.circular(18)),
                  image: DecorationImage(
                    image: AssetImage(
                      "assets/hotel1.jpg",
                    ),

                    fit: BoxFit.cover,
                    //permet a l'image de prendre l'entieret?? du container
                  ),
                ),
                child: Stack(
                  //widget button qui sera superpos?? au dessus
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
                    // hotelData['titre']
                    "Hoteru",
                    style: GoogleFonts.nunito(
                      fontSize: 18,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Text(
                    // " \$" + hotelData['prix']

                    "15 \$",
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
                    "Watson, Night City",
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
                      //toString va permettre de transformer ma variable nombre en chaine de caract??re
                      Text(
                        // hotelData['distance'].toString() + " km "
                        "1 km",
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
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    // hotelData['review'].toString() +
                    " 42 Avis ",
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
