import 'package:flutter/material.dart';
import 'package:tamas/colors.dart';

class Info_Container extends StatelessWidget {
  final String text;
  Info_Container(this.text);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(text, style: TextStyle(fontSize: 40, color: kFontColor)),
        SizedBox(height: 15),
        Container(
          height: MediaQuery.of(context).size.height/1.7,
          width: MediaQuery.of(context).size.width/1.2,
          decoration: BoxDecoration(
              boxShadow: [BoxShadow(color: Colors.grey,
                  blurRadius: 10,
                  offset: Offset(0,10
                  )),
              ],
              color: Colors.white,
              borderRadius: BorderRadius.circular(20)
          ),
        )
      ],
    );
  }
}