import 'package:flutter/material.dart';
import 'discount_card.dart';

//widget with list of portrait cards
Widget listCardDiscount(List<Map<String, dynamic>> data){
  return SizedBox(
    height: 176.0,
    child: ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index)=> discountCard(
        context,
        data[index]['imageURL'],
        data[index]['title'],
      ),
      itemCount: data.length,
    ),
  );
}