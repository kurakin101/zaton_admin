import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDataPage extends StatefulWidget {
  const MyDataPage({Key? key}) : super(key: key);

  @override
  _MyDataPageState createState() => _MyDataPageState();
}

class _MyDataPageState extends State<MyDataPage>
    with SingleTickerProviderStateMixin {
  late TabController controller;
  int _selectedIndex = 0;

  List<Widget> list = [
    Tab(
      text: ("Личные данные"),
    ),
    Tab(
      text: ("Адреса"),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // Create TabController for getting the index of current tab
    controller = TabController(length: list.length, vsync: this);

    controller.addListener(() {
      setState(() {
        _selectedIndex = controller.index;
      });
      print("Selected Index: " + controller.index.toString());
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Color(0xff24C273),
          ),
          bottom: TabBar(
            onTap: (index) {
              // Should not used it as it only called when tab options are clicked,
              // not when user swapped
            },
            controller: controller,
            tabs: list,
            labelColor: Colors.black87,
            unselectedLabelColor: Colors.black87,
            indicatorColor: Colors.black45,
          ),
          backgroundColor: Colors.white,
          title: Text("Мои данные",
              style: GoogleFonts.montserrat(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Color(0xff24C273))),
        ),
        body: TabBarView(
          controller: controller,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 20),
              child: Column(
                  children: [
                    TextFormField(
                      decoration: new InputDecoration(
                        labelText: 'ФИО:',
                        fillColor: Colors.teal,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     this._phone = value;
                      //   });
                      // }),
                    ),TextFormField(
                      decoration: new InputDecoration(
                        labelText: 'Телефон:',
                        fillColor: Colors.teal,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     this._phone = value;
                      //   });
                      // }),
                    ),TextFormField(
                      decoration: new InputDecoration(
                        labelText: 'Эл.почта:',
                        fillColor: Colors.teal,
                        labelStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                        hintStyle: TextStyle(
                          fontWeight: FontWeight.w800,
                          fontSize: 14,
                          color: Colors.black54,
                        ),
                      ),
                      // onChanged: (value) {
                      //   setState(() {
                      //     this._phone = value;
                      //   });
                      // }),
                    ),
                  ]),
            ),
            Column(
                children : [
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: ElevatedButton(
                    onPressed: () => {},
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
                            "Добавить новый адрес",
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    child: Container(
                    width: double.infinity,
                    height: 1,
                    color: Colors.black45,
                  ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(24),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "проезд Воскресенского, д. 1А",
                          style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: Colors.black87),
                        ),
                        Icon(Icons.delete_forever, color: Color(0xff24C273))
                      ],
                    ),
                  ),
                ]),
          ],
        ),
      ),
    );
  }
}
