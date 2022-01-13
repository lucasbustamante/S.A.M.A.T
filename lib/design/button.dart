import 'package:flutter/material.dart';

import 'colors.dart';


class Button extends StatelessWidget {
  final String buttontext;

  Button(this.buttontext);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(40),
        boxShadow: [BoxShadow(color: Colors.grey,
          blurRadius: 10,
          offset: Offset(0,10
          )),
      ],),
      child: Chip(
          backgroundColor: kPrimaryColor,
          padding: EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          label: Text(
            buttontext,
            style: TextStyle(
                fontWeight: FontWeight.w500,
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width/20),
          )),
    );
  }
}
