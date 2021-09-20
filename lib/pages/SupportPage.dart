import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SupportPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SupportPageState();
  }
}

class _SupportPageState extends State<SupportPage> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        iconTheme: IconThemeData(
          color: Color(0xff24C273),
        ),
        backgroundColor: Colors.white,
        title: Text("Служба поддержки",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Поддержка",
                style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Text("Дайте нам знать, если у вас возникли проблемы",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.phone, color: Color(0xff24C273),),
                SizedBox(
                  width: 20,
                ),
                Text("+ 8 800 555 35 35",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black)),
              ],
            ),
            SizedBox(
              height: 20,
            ),
            Text("Жалобы и предложения",
                style: GoogleFonts.montserrat(
                    fontSize: 16,
                    color: Colors.black)),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Icon(Icons.phone_in_talk_outlined, color: Color(0xff24C273),),
                SizedBox(
                  width: 20,
                ),
                Text("+ 8 800 555 35 35",
                    style: GoogleFonts.montserrat(
                        fontSize: 16,
                        color: Colors.black)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
