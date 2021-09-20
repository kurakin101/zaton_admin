import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:zaton/pages/CartPage.dart';
import 'package:zaton/pages/CatalogPage.dart';
import 'package:zaton/pages/DiscountPage.dart';
import 'package:zaton/pages/ProfilePage.dart';
import 'package:zaton/pages/SearchPage.dart';


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
  int _selectedIndex = 0;

  final _pageOptions = [
    CatalogPage(),
    DiscountPage(),
    CartPage(),
    SearchPage(),
    ProfilePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _page = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[_page],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.menu, ),
            label: 'Каталог',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.local_offer_outlined, ),
            label: 'Акции',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined, ),
            label: 'Корзина',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined, ),
            label: 'Поиск',
          ),BottomNavigationBarItem(
            icon: Icon(Icons.account_circle_outlined, ),
            label: 'Личное',
          ),
        ],
        currentIndex: _page,
        selectedItemColor: Color(0xff24C273),
        unselectedItemColor: Colors.black38,
        showUnselectedLabels: true,
        onTap: _onItemTapped,
      ),
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






