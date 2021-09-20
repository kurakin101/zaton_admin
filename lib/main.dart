import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:zaton/utils/Manager.dart';
import 'package:zaton/screens/SplashScreen.dart';


void main() {
  runApp(new App());
}

class App extends StatelessWidget {
  final routes = <String, WidgetBuilder>{
    // Путь, по которому создаётся Manager Screen
    '/Manager': (BuildContext context) => Manager(),
  };

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "App",
      theme: ThemeData(
        backgroundColor: HexColor("#e5ffe8"),
      ),
      home: SplashScreen(),
      // передаём маршруты в приложение
      routes: routes,
    );
  }
}
