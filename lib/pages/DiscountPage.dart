import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaton/widgets/bodyWidget.dart';
import 'package:zaton/widgets/discount_button.dart';
import 'package:zaton/widgets/list_card_landscape.dart';
import 'package:zaton/widgets/list_card_discount.dart';
import 'package:zaton/widgets/section_title.dart';

class DiscountPage extends StatefulWidget {


  @override
  State<StatefulWidget> createState() {
    return _DiscountPageState();
  }
}

class _DiscountPageState extends State<DiscountPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#e5ffe8"),
      //top bar with Instagram information and some buttons
      //this is the website body
      appBar: AppBar(
        title: Text(
          'Акции',
          style: GoogleFonts.montserrat(
              color: HexColor('#24C273'),
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: bodyWidget(<Widget>[
        //card with big icon without image
        discountButton(
          'Доставим\nпродукты\nза 1 рубль',
          'assets/images/bannana.png',
          'assets/images/bannana.png',
          'assets/images/bannana.png',
          (){
            //on tap action
          },
        ),
        //title of lower section
        sectionTitle('Скидки', '5'),
        //list of portrait cards
        listCardDiscount([
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
        ]),
        sectionTitle('Еда за баллы', '43'),
        //list of portrait cards
        listCardDiscount([
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
          //portrait card from list
          {
            'imageURL':'assets/images/rectangle.png',
            'title':'Скидка 20% при\n заказе от 2000 р',
          },
        ]),
      ],),
      //floating action button with business information
    );
  }
}
