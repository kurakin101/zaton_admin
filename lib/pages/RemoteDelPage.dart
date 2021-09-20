import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RemoteDelPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _RemoteDelPageState();
  }
}

class _RemoteDelPageState extends State<RemoteDelPage> {
  bool isSwitched = false;
  bool isItems = false;
  bool isDeliver = false;
  bool isStatus = false;

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
        title: Text("Управление курьерами",
            style: GoogleFonts.montserrat(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(18),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Андрей Иванов",
                      style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                  Text("работает с 01.01.2021",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.black)),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Всего заказов выполнено: 10",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.black)),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Всего заработано: 3549 р.",
                      style: GoogleFonts.montserrat(
                          fontSize: 14, color: Colors.black)),
                ],
              ),
            ),
            isItems == true ? cart() : SizedBox(),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    onPressed: () => setState(() {
                      isDeliver = !isDeliver;
                    }),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.white,
                      onPrimary: Colors.white,
                      shadowColor: Color(0xff24C273),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 14, horizontal: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Передать заказ",
                            style: GoogleFonts.montserrat(
                                fontSize: 16, color: Colors.black),
                          ),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff24C273),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child: Text(
                        "Работает",
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isDeliver == true
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Container(
                        width: 180,
                        // padding: EdgeInsets.symmetric(horizontal: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          border: Border.all(
                            color: Color(0xff24C273),
                          ),
                        ),
                        child: Column(
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "№1",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: Colors.black),
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
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Color(0xff24C273),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "№2",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: Colors.black),
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
                            Container(
                              width: double.infinity,
                              height: 1,
                              color: Color(0xff24C273),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  "№3",
                                  style: GoogleFonts.montserrat(
                                      fontSize: 16, color: Colors.black),
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
                      ),
                    ),
                  )
                : SizedBox(),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 40),
              child: Text("Связаться с курьером: 8 926 100 20 20",
                  style: GoogleFonts.montserrat(
                      fontSize: 16, color: Colors.black)),
            ),

            Container(
              width: double.infinity,
              height: 1,
              color: Color(0xff24C273),
            ),
          ],
        ),
      ),
    );
  }
}

Widget cart() {
  return Column(
    children: [
      Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: Color(0xffE5FFE8),
        ),
        child: Column(
          children: [
            item(),
            item(),
            item(),
            item(),
          ],
        ),
      ),
    ],
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
