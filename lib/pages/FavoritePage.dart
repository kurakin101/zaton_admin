import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaton/widgets/card_portrait.dart';

class FavoritePage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _FavoritePageState();
  }
}

class _FavoritePageState extends State<FavoritePage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff24C273),
        ),
        backgroundColor: Colors.white,
        title: Text("Избранное",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        padding: EdgeInsets.all(12.0),
        childAspectRatio: 6.8 / 8.9,
        children: <Widget>[
          cardPortrait(
            context,
            'assets/images/banana.png',
            'Бананы',
            '1 кг',
            '100 руб.',
          ),
          cardPortrait(
            context,
            'assets/images/strauberry.png',
            'Арбуз',
            '1 кг',
            '100 руб.',
          ),
          cardPortrait(
            context,
            'assets/images/mandarin.png',
            'Мандарины',
            '1 кг',
            '100 руб.',
          ),
          cardPortrait(
            context,
            'assets/images/orange.png',
            'Апельсины',
            '1 кг',
            '100 руб.',
          ),
          cardPortrait(
            context,
            'assets/images/lime.png',
            'Лайм',
            '1 кг',
            '100 руб.',
          ),
          cardPortrait(
            context,
            'assets/images/ananas.png',
            'Ананас',
            '1 кг',
            '100 руб.',
          ),
        ],
      ),
    );
  }
}
