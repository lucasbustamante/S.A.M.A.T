import 'package:flutter/material.dart';

import 'colors.dart';


class Button extends StatelessWidget {
  final String buttontext;
  final Function()? onTap;
  final Function()? teste;

  Button(this.buttontext, {this.onTap, this.teste});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap!,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(40),
          boxShadow: [BoxShadow(color: Colors.grey,
            blurRadius: 10,
            offset: Offset(0,10
            )),
        ],),
        child: Chip(
            backgroundColor: kPrimaryColor,
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            label: Text(
              buttontext,
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                  fontSize: MediaQuery.of(context).size.width/22),
            )),
      ),
    );
  }
}
