import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaton/main.dart';
import 'package:zaton/pages/RegisterPage.dart';
import 'package:zaton/widgets/list_cart_portaint.dart';

import 'LoginPage.dart';

class ProfilePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _ProfilePageState();
  }
}

class _ProfilePageState extends State<ProfilePage> {
  bool turn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5FFE8),
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: Color(0xffE5FFE8),
      //   title: Row(
      //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       Icon(
      //         Icons.arrow_back_outlined,
      //         color: Color(0xff24C273),
      //       ),
      //       Text("Корзина",
      //           style: GoogleFonts.montserrat(
      //               fontSize: 28,
      //               fontWeight: FontWeight.bold,
      //               color: Color(0xff24C273))),
      //       InkWell(
      //         onTap: () => setState(() {
      //           turn = !turn;
      //         }),
      //         child: Icon(
      //           Icons.remove_shopping_cart_outlined,
      //           color: Color(0xff24C273),
      //         ),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.account_circle,
              size: 110,
            ),
            Column(
              children: [
                Text(
                  "Войдите в профиль",
                  style: GoogleFonts.montserrat(
                      fontSize: 26, fontWeight: FontWeight.w800),
                ),
                SizedBox(
                  height: 12,
                ),
                Text(
                  "Начните покупки прямо сейчас",
                  style: GoogleFonts.montserrat(fontSize: 16),
                ),
              ],
            ),

            Column(
              children: [
                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LoginPage()),
                      );
                    },
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
                            "Войти",
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
                SizedBox(
                  height: 20,
                ),
                Padding(padding: EdgeInsets.symmetric(horizontal: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },                    style: ElevatedButton.styleFrom(
                      primary: Color(0xffE5FFE8),
                      onPrimary: Colors.white,
                      shadowColor: Color(0xff24C273),
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
                            "Зарегистрироваться",
                            style: GoogleFonts.montserrat(
                              fontSize: 18,
                              fontWeight: FontWeight.w800,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Padding(padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "После регистрации вам будут доступны все возможности приложения",
              textAlign: TextAlign.center,
              style: GoogleFonts.montserrat(fontSize: 16),
            ),
            ),

            Padding(padding: EdgeInsets.symmetric(horizontal: 30),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  primary: Colors.white,
                  onPrimary: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.info_outlined, color: Color(0xff24C273),),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        "Служба поддержки",
                        style: GoogleFonts.montserrat(
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
