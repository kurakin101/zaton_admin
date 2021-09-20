import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hexcolor/hexcolor.dart';

//big portrait card with image
Widget cartPortrait(BuildContext context, String imagePath, String title) {
  return GestureDetector(
    onTap: () {
      //on tap action
    },
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Container(
        height: 33,
        child: Card(
          color: HexColor('#8EDDB5'),
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  title,
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.normal,
                    fontSize: 18,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              // ClipRRect(
              //   borderRadius: BorderRadius.circular(30.0),
              //   child: Image.asset(
              //       imagePath,
              //       width: 243,
              //       height: 77,
              //       fit:BoxFit.cover
              //   ),
              // ),
            ],
          ),
        ),
      ),
    ),
  );
}