import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

//card with icon without image
Widget discountButton(String title, String image1, String image2, String image3, onTap){
  return Padding(
    padding: const EdgeInsets.all(12.0),
    child: Card(
      shape: RoundedRectangleBorder(
        //side: BorderSide(color: Colors.white70, width: 1),
        borderRadius: BorderRadius.circular(28),
      ),
      color: HexColor('#24C273'),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Container(
          height: 90,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                title,
                overflow: TextOverflow.ellipsis,
                style: GoogleFonts.montserrat(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 22,
                ),
              ),
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(image1),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(image2),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(2.0),
                    child: Image.asset(image3),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    ),
  );
}