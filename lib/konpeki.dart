import 'dart:ffi';
import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hotelapp/main.dart';

const d_blue = Color(0xFF136377);
const d_lightblue = Color(0xFF25E1ED);
const d_redus = Color(0xFFFF4A57);
const d_yellow = Color(0xFFfcec0c);


class DataModel {
  final String title;
  final String imageName;
  DataModel(
    this.title,
    this.imageName
  );
}

List<DataModel> dataList = [

DataModel("Konpeki plaza","assets/hotel1.jpg"),
DataModel("Hoteru","assets/hotel2.jpeg"),
DataModel("Biotechnica Hotel","assets/hotel3.jpg"),
DataModel("No Tell Motel","assets/hotel4.jpg"),


];

class HomeScreen extends StatefulWidget {
const HomeScreen({Key? key}) : super(key: key);

@override

_Konpeki createState() => _Konpeki();

}



class _Konpeki extends State<HomeScreen> {

  late PageController _pageController;
  int _currentPage = 0;
  
  @override
  void initState(){

    super.initState();
    _pageController = PageController(initialPage: _currentPage, viewportFraction: 0.8);
  }

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
              PageView.builder(
                itemCount: dataList.length,
                physics: const ClampingScrollPhysics(),
                controller: ,
                itemBuilder: (context, index){
                  return slider(index);
                },
                ),
             
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
     
       
                padding: EdgeInsets.symmetric(vertical: 40),
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


  Widget slider(int index) {
    return Container(

      
     
    );
  }
