import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OrdersDetailsPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _OrdersDetailsPageState();
  }
}

class _OrdersDetailsPageState extends State<OrdersDetailsPage> {
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
        title: Text("Заказы",
            style: GoogleFonts.montserrat(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Color(0xff24C273))),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
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
                  InkWell(
                    onTap: () => setState(() {
                      isStatus = !isStatus;
                    }),
                    child: Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Color(0xff24C273),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Доставлено",
                              style: GoogleFonts.montserrat(
                                  color: Colors.white)),
                          Icon(
                            Icons.keyboard_arrow_down_outlined,
                            color: Colors.white,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isStatus == true ? Align(
              alignment:Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 18),
                child: Column(
                  children: [
                    Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.amber,
                      ),
                      child: Text(
                        "Принят",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.blue,
                      ),
                      child: Text(
                        "Передан курьеру",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.green,
                      ),
                      child: Text(
                        "Готовится",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),SizedBox(
                      height: 6,
                    ),
                    Container(
                      width: 120,
                      height: 30,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.red,
                      ),
                      child: Text(
                        "Отменен",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
            ) : SizedBox(),
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
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 18),
              child: InkWell(
                onTap: () => setState(() {
                  isItems = !isItems;
                }),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Подробнее о заказе",
                        style: GoogleFonts.montserrat(
                            fontSize: 20, color: Colors.black)),
                    Icon(
                      Icons.arrow_forward_outlined,
                      color: Color(0xff24C273),
                      size: 50,
                    ),
                  ],
                ),
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
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xff24C273),
                      onPrimary: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 0),
                      child:  Text(
                        "Оплачено",
                        style: GoogleFonts.montserrat(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ),
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
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 0),
                      child:  Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Передать курьеру",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          Icon(Icons.keyboard_arrow_down_outlined, color: Colors.black,)
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            isDeliver == true ? Align(
              alignment:Alignment.centerRight,
              child: Padding(
                padding: EdgeInsets.all(10),
                child: Container(
                  width: 195,
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Color(0xff24C273),),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Курьер Иванов",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black),
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
                            "Курьер Седов",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black),
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
                            "Курьер Петров",
                            style: GoogleFonts.montserrat(
                                fontSize: 16,
                                color: Colors.black),
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
            ) : SizedBox(),


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
