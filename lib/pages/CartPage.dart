import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:zaton/main.dart';
import 'package:zaton/widgets/list_cart_portaint.dart';

class CartPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CartPageState();
  }
}

class _CartPageState extends State<CartPage> {
  bool turn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffE5FFE8),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffE5FFE8),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Icon(
              Icons.arrow_back_outlined,
              color: Color(0xff24C273),
            ),
            Text("Корзина",
                style: GoogleFonts.montserrat(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Color(0xff24C273))),
            InkWell(
              onTap: () => setState(() {
                turn = !turn;
              }),
              child: Icon(
                Icons.remove_shopping_cart_outlined,
                color: Color(0xff24C273),
              ),
            ),
          ],
        ),
      ),
      body: turn == true ? cleanCart() : fullCart(),
    );
  }

  Widget cleanCart() {
    return Center(
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: 125,
                  height: 125,
                  decoration: BoxDecoration(
                    color: Colors.black12,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Container(
                  width: 95,
                  height: 95,
                  decoration: BoxDecoration(
                    color: Colors.black26,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Container(
                  width: 70,
                  height: 70,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(60),
                  ),
                ),
                Icon(
                  Icons.shopping_bag_outlined,
                  size: 50,
                  color: Colors.black38,
                ),
              ],
            ),
            Column(
              children: [
                Text("Ваша корзина пуста",
                    style: GoogleFonts.montserrat(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(
                  height: 20,
                ),
                Text("Самое время добавить что-то.",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    )),
                Text("Просто перейдите в каталог",
                    style: GoogleFonts.montserrat(
                      fontSize: 16,
                    )),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget fullCart() {
    return Stack(
      children: [
    ListView(
    padding: const EdgeInsets.all(8),
    children: <Widget>[
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("5", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
    SizedBox(height: 26,),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("2", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("123 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("374.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Мука\nпшеничная", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("500.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Мука\nпшеничная", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
      SizedBox(height: 26,),

      Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              child: Text("-", style: TextStyle(color: Colors.white, fontSize: 18),),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
            SizedBox(
              width: 6,
            ),
            Text("1", style: GoogleFonts.montserrat(
                fontSize: 24,
                color: Colors.black38),),
            SizedBox(
              width: 6,
            ),
            Container(
              alignment: Alignment.center,
              width: 20,
              height: 20,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.black38,

              ),
              child: Text("+", style: TextStyle(color: Colors.white, fontSize: 18),),
              // shape: new RoundedRectangleBorder(
              //   borderRadius: new BorderRadius.circular(30.0),
              // ),
            ),
          ],
        ),
        Row(
          children: [
            Image.asset("lib/assets/item.png"),
            SizedBox(
              width: 16,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Батон\nнарезаный", style: GoogleFonts.montserrat(fontSize: 16), textAlign: TextAlign.justify),
                Text("250 г", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38)),
              ],
            ),
          ],
        ),
        Text("150.0 р", style: GoogleFonts.montserrat(fontSize: 12, color: Colors.black38),),

      ],
    ),
    ],
    ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 26, horizontal: 26),
          child: Align(
              alignment: Alignment.bottomCenter,
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
                  padding: EdgeInsets.symmetric(vertical: 18, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text("Оформить заказ", style: GoogleFonts.montserrat(
                          fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),),
                      Text("596,00 р", style: GoogleFonts.montserrat(fontSize: 18,
                          fontWeight: FontWeight.w800,
                          color: Colors.white),),
                    ],
                  ),
                ),
              )
              // child: MaterialButton(
              //   onPressed: () => {},
              //
              //   color: Color(0xff24C273),
              //   child: Padding(
              //     padding: EdgeInsets.all(12),
              //     child: Row(
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       crossAxisAlignment: CrossAxisAlignment.center,
              //       children: [
              //         Text("Оформить заказ", style: GoogleFonts.montserrat(
              //             fontSize: 20,
              //             fontWeight: FontWeight.w800,
              //             color: Colors.white),),
              //         Text("596,00 р", style: GoogleFonts.montserrat(fontSize: 20,
              //             fontWeight: FontWeight.w800,
              //             color: Colors.white),),
              //       ],
              //     ),
              //   ),
              // ),
              ),
        ),
      ],
    );
  }

  Widget cardUi(String id, String ownerId, String image, String description,
      String date, String price, String name, String category) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
      // padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),

      child: InkWell(
        // onTap: () => Navigator.push(
        //   context,
        //   MaterialPageRoute(
        //       builder: (context) => detailsPage(
        //           id, image, description, date, name, price, category, ownerId, context)),
        // ),
        child: Container(
          padding: EdgeInsets.all(8),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topCenter,
                child: Container(
                  padding: EdgeInsets.only(
                    bottom: 32,
                  ),
                  // child: Neumorphic(
                  //   style: NeumorphicStyle(
                  //     intensity: 0,
                  //     boxShape: NeumorphicBoxShape.roundRect(
                  //         BorderRadius.circular(12)),
                  //   ),
                  //   child: Container(
                  //     height: double.infinity,
                  //     width: double.infinity,
                  //     child: Image.network(image, fit: BoxFit.fill),
                  //   ),
                  // ),
                ),
              ),
              Container(
                // padding: EdgeInsets.symmetric(
                //   horizontal: 16,
                // ),
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 3,
                        child: Text(
                          name,
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Text(
                          r"$" '$price',
                          style: TextStyle(
                            fontWeight: FontWeight.w800,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
