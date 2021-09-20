import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaton/pages/CartPage.dart';
import 'package:zaton/pages/CatalogPage.dart';
import 'package:zaton/pages/DiscountPage.dart';
import 'package:zaton/pages/ProfilePage.dart';
import 'package:zaton/pages/RemoteDelPage.dart';
import 'package:zaton/pages/RemotePromoPage.dart';
import 'package:zaton/pages/SearchPage.dart';
import 'package:zaton/pages/StatOrdersPage.dart';

import '../pages/NotificationPage.dart';
import '../pages/OrdersPage.dart';

class Manager extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}



class MyHomePage extends StatefulWidget {

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _page = 0;

  final _pageOptions = [
    CatalogPage(),
    DiscountPage(),
    CartPage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    Navigator.of(context).push(
        MaterialPageRoute(builder: (context) => _pageOptions[_page]));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("ZATON", style: GoogleFonts.montserrat(fontSize: 26, fontWeight: FontWeight.w800, color: Colors.black),),
            Text("Администратор", style: GoogleFonts.montserrat(fontSize: 14, color: Colors.black)),
          ],
        ),
      ),
      body: Padding(
      padding: const EdgeInsets.all(20),
        child:ListView(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => StatOrdersPage()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff24C273),
                  ),
                  child: Text(
                    "Статистика заказов",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => NotificationPage()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff24C273),
                  ),
                  child: Text(
                    "Уведомление о получении заказов",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OrdersPage()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff24C273),
                  ),
                  child: Text(
                    "Просмотр всех заказов",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemotePromoPage()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff24C273),
                  ),
                  child: Text("Управление промокодами", style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                ),
              ),
            ),Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: InkWell(
                onTap: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RemoteDelPage()),
                ),
                child: Container(
                  width: double.infinity,
                  height: 100,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.0),
                    color: Color(0xff24C273),
                  ),
                  child: Text("Управление курьерами", style: TextStyle(color: Colors.white, fontSize: 20),textAlign: TextAlign.center,),
                ),
              ),
            ),
          ],
        ),
      ),
      // _pageOptions[_page],
      // bottomNavigationBar: BottomNavigationBar(
      //   type: BottomNavigationBarType.fixed,
      //   items: const <BottomNavigationBarItem>[
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.menu, ),
      //       label: 'Каталог',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.local_offer_outlined, ),
      //       label: 'Акции',
      //     ),
      //     BottomNavigationBarItem(
      //       icon: Icon(Icons.shopping_cart_outlined, ),
      //       label: 'Корзина',
      //     ),BottomNavigationBarItem(
      //       icon: Icon(Icons.search_outlined, ),
      //       label: 'Поиск',
      //     ),BottomNavigationBarItem(
      //       icon: Icon(Icons.account_circle_outlined, ),
      //       label: 'Личное',
      //     ),
      //   ],
      //   currentIndex: _page,
      //   selectedItemColor: Color(0xff24C273),
      //   unselectedItemColor: Colors.black38,
      //   showUnselectedLabels: true,
      //   onTap: _onItemTapped,
      // ),
    );
    // bottomNavigationBar: NeumorphicTheme(
    //   theme: NeumorphicThemeData(
    //     defaultTextColor: Color(0xFF3E3E3E),
    //     accentColor: Colors.grey,
    //     variantColor: Colors.black38,
    //   ),
    //   themeMode: ThemeMode.light,
    //   child: Container(
    //     width: double.infinity,
    //     height: 90,
    //     child: NeumorphicBackground(
    //       child: NeumorphicBackground(
    //         child: Container(
    //           child: Container(
    //             child: Container(
    //               child: Neumorphic(
    //                 child: Row(
    //                   mainAxisAlignment: MainAxisAlignment.center,
    //                   children: [
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.home_outlined),
    //                           onPressed: () {setState(() {
    //                             _page = 0;
    //                           });}
    //                       ),
    //                     ),
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.add_circle_outline),
    //                           onPressed: () {setState(() {
    //                             _page = 1;
    //                           });}
    //                       ),
    //                     ),
    //                     Expanded(
    //                       child: NeumorphicButton(
    //                           padding: EdgeInsets.all(16),
    //                           style: NeumorphicStyle(
    //                               shape: NeumorphicShape.flat,
    //                               boxShape: NeumorphicBoxShape.circle(),
    //                               depth: 12),
    //                           child: Icon (Icons.person_outline_rounded),
    //                           onPressed: () {setState(() {
    //                             _page = 2;
    //                           });}
    //                       ),
    //                     ),
    //                   ],
    //                 ),
    //               ),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ),
    // ),
  }
}






