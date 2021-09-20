import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaton/widgets/card_portrait.dart';
import 'package:zaton/widgets/section_title.dart';

class SearchPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _SearchPageState();
  }
}

class _SearchPageState extends State<SearchPage> {
  late String _myActivity;
  late String _myActivityResult;
  final formKey = new GlobalKey<FormState>();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(18.0)),
            border: Border.all(color: Colors.transparent),
            color: Colors.black12,
          ),
          padding: EdgeInsets.fromLTRB(8,8,8,8,),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.search, color: Colors.black38,),
              Text(
                "Поиск",
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'ProductSans',
                    fontWeight: FontWeight.w500,
                    color: Colors.black38
                ),
              ),
              Icon(Icons.mic, color: Colors.black38,),
            ],
          ),
        ),
        bottom: PreferredSize(
          preferredSize: Size(10, 80),
          child: Container(
            child: sectionTitle('Рекомендуемые товары', ''),
          ),
        ),
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
