import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'OrderDetailsPage.dart';

class StatOrdersPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _StatOrdersPageState();
  }
}

class _StatOrdersPageState extends State<StatOrdersPage> {
  bool isItems = false;

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
        title: Text("Статистика заказов",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: Stack(
        children: [
          ListView(
            children: [
              cart(context),
              cart(context),
              cart(context),
              cart(context),
              cart(context),
            ],
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              height: 125,
              color: Colors.white,
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 1,
                    color: Color(0xff24C273),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Всего заказов",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff24C273))),
                        Text("7",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(18),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text("Всего заработано",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff24C273))),
                        Text("6.999 р",
                            style: GoogleFonts.montserrat(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black)),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget cart(BuildContext context) {
  return InkWell(
    onTap: () => Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => OrdersDetailsPage()),
    ),
    child: Column(
      children: [
        Container(
          width: double.infinity,
          height: 1,
          color: Color(0xff24C273),
        ),
        Padding(
          padding: const EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 100,
                height: 30,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    border: Border.all(color: Color(0xff24C273))),
                child: Text("15:00"),
              ),
              Text("15 марта",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.all(18),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Андрей Иванов",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
              Text("558.00 р",
                  style: GoogleFonts.montserrat(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black)),
            ],
          ),
        ),
        Column(
          children: [
            item(),
            item(),
            item(),
            item(),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(18),
          child: Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: 200,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Color(0xff24C273),
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        "Оплачено ",
                        style: GoogleFonts.montserrat(
                            fontSize: 18,
                            fontWeight: FontWeight.w800,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),


      ],
    ),
  );
}

Widget item() {
  return Padding(
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1 x",
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон нарезной", style: TextStyle(fontSize: 20)),
                Text("250 г", style: TextStyle(color: Colors.black45)),
              ],
            ),
          ],
        ),
        Text(
          "115.00 р",
          style: TextStyle(fontSize: 20),
        ),
      ],
    ),
  );
}
