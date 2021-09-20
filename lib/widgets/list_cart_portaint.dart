import 'package:flutter/material.dart';
import 'package:zaton/widgets/cart_portait.dart';

import 'card_portrait.dart';

//widget with list of portrait cards
Widget listCartPortrait(List<Map<String, dynamic>> data){
  return SizedBox(
    child: ListView.builder(
      physics: ClampingScrollPhysics(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemBuilder: (context, index)=> cartPortrait(
        context,
        data[index]['imageURL'],
        data[index]['title'],
      ),
      itemCount: data.length,
    ),
  );
}