import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

//big portrait card with image
Widget cardPortrait(BuildContext context, String imageURL, String title, String subtitle, String description,) {
  return GestureDetector(
    onTap: () {
      //js.context.callMethod('open', [link]);
    },
    child: Card(
      shape: RoundedRectangleBorder(
        //side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Stack(
        children: [
          Align(
            alignment: Alignment(0.8, 0.9),
            child: Icon(Icons.shopping_cart, color: HexColor('#24C273'),),
          ),
          Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            AspectRatio(
              aspectRatio: 15.5 / 14.0,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Image.asset(
                    imageURL,
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment(-0.7, -0.6),
                    child: Icon(Icons.favorite, color: Colors.red,),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(title, style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),),
                  SizedBox(height: 8.0),
                  Text(
                    subtitle,
                    style: GoogleFonts.montserrat(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 8.0),
                  Text(
                    description,
                    style: GoogleFonts.montserrat(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),],
      ),
    ),
  );
}