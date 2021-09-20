import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

//lower section naming widget
Widget sectionTitle(String title, String subtitle) {
  return Padding(
    padding: const EdgeInsets.all(24.0),
    child: Row(
      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            title,
            style: GoogleFonts.montserrat(
                fontSize: 27,
                fontWeight: FontWeight.bold
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0),
          child: Text(
            subtitle,
            style: GoogleFonts.montserrat(
              color: Colors.black,
              fontSize: 14,
            ),
          ),
        ),
      ],
    ),
  );
}