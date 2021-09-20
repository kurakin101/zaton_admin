import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaton/pages/FavoritePage.dart';
import 'package:zaton/pages/MyDataPage.dart';
import 'package:zaton/pages/NotificationPage.dart';
import 'package:zaton/pages/OrdersPage.dart';
import 'package:zaton/pages/SupportPage.dart';

import '../utils/Manager.dart';
import 'CatalogPage.dart';

class ProfileSettingsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfileSettingsPageState();
  }
}

class _ProfileSettingsPageState extends State<ProfileSettingsPage> {
  bool turn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff24C273),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff24C273),
        title: Text("Личный кабинет",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black)),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Здравствуйте,",
                      style: GoogleFonts.montserrat(
                          fontSize: 22,
                          color: Colors.black)),
                  Text("Андрей Иванов,",
                      style: GoogleFonts.montserrat(
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          color: Colors.black)),
                ],
              ),
            ),



            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30),),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
                child: Column(
                  children: [
                    InkWell(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => OrdersPage()),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.bookmark_border_sharp,
                            color: Color(0xff24C273),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Мои заказы",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18, color: Colors.black))
                        ],
                      ),
                    ),

                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () => Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => MyDataPage()),
                    ),
                    child: Row(
                      children: [
                        Icon(
                          Icons.data_usage_outlined,
                          color: Color(0xff24C273),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text("Мои данные",
                            style: GoogleFonts.montserrat(
                                fontSize: 18, color: Colors.black))
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  InkWell(
                    onTap: () =>  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => FavoritePage()),
                    ),
                    child: Row(
                    children: [
                      Icon(
                        Icons.star_border_outlined,
                        color: Color(0xff24C273),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Text("Избранное", style: GoogleFonts.montserrat(
                          fontSize: 18,
                          color: Colors.black))
                    ],
                  ),
                  ),

                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () =>  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => NotificationPage()),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.notifications_none_outlined,
                            color: Color(0xff24C273),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Уведомления", style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    InkWell(
                      onTap: () =>  Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SupportPage()),
                      ),
                      child: Row(
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: Color(0xff24C273),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text("Служба поддержки", style: GoogleFonts.montserrat(
                              fontSize: 18,
                              color: Colors.black))
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    ElevatedButton(
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(builder: (context) => Manager())),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        onPrimary: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.0),
                        ),
                      ),
                      child: Padding(
                        padding:
                        EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Выйти",
                              style: GoogleFonts.montserrat(
                                  fontSize: 18,
                                  fontWeight: FontWeight.w800,
                                  color: Colors.black45),
                            ),
                          ],
                        ),
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

