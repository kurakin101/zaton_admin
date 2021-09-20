import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaton/widgets/card_portrait.dart';

class CatalogPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _CatalogPageState();
  }
}

class _CatalogPageState extends State<CatalogPage> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: HexColor('#24C273'),),
          onPressed: () {},
        ),
        title: Text(
          'Фрукты',
          style: GoogleFonts.montserrat(
              color: HexColor('#24C273'),
              fontSize: 28,
              fontWeight: FontWeight.bold
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: HexColor('#24C273'),),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.transparent,
        elevation: 0,
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
