import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RemotePromoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RemotePromoPageState();
  }
}

class _RemotePromoPageState extends State<RemotePromoPage> {
  bool turn = false;
  bool isSwitched = false;

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
        title: Text("Управление промокодами",
            style: GoogleFonts.montserrat(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Row(
                    children: [
                      Text("Промокод 2020",
                          style: GoogleFonts.montserrat(
                              fontSize: 16, color: Colors.black)),
                      Icon(Icons.arrow_downward_outlined,
                          color: Color(0xff24C273))
                    ],
                  ),
                  Column(
                    children: [
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Color(0xffE5FFE8),
                        activeColor: Color(0xff24C273),
                      ),
                      Switch(
                        value: isSwitched,
                        onChanged: (value) {
                          setState(() {
                            isSwitched = value;
                            print(isSwitched);
                          });
                        },
                        activeTrackColor: Color(0xffE5FFE8),
                        activeColor: Color(0xff24C273),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(14),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(14),
                  color: Colors.black12,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Скидка 30% на первый заказ.",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.black, fontWeight: FontWeight.bold,)),
                    SizedBox(
                      height: 20,
                    ),
                    Text("Акция действует только на первый заказ и 100% предоплате блюд из меню каталога.",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.black)),
                    SizedBox(
                      height: 20,
                    ),
                    Text(" Срок дейсвтия: до 01.05.2021",
                        style: GoogleFonts.montserrat(
                            fontSize: 16, color: Colors.black)),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
