import 'package:flutter/material.dart';

class OkayPage extends StatefulWidget {
  const OkayPage({Key? key}) : super(key: key);

  @override
  _OkayPageState createState() => _OkayPageState();
}

class _OkayPageState extends State<OkayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(Icons.check_circle, color: Colors.green, size: 54,),
          Text(
            'Спасибо',
            style: TextStyle(fontSize: 54),
          ),
          Text(
            'Ваш заказ успешно оформлен. Мы свяжемся с Вами в ближайшее время.',
            style: TextStyle(fontSize: 24),
          )
        ],
      ),
    );
  }
}
