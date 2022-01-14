import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamas/design/button.dart';
import 'package:tamas/design/colors.dart';
import 'package:tamas/profile.dart';
import 'package:tamas/profile_button.dart';

class Info_Container extends StatelessWidget {
  final String text;
  final String? button;
  final String? info;
  final Function()? teste;
  Info_Container(this.text,{this.button, this.info, this.teste});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
      child: Column(crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Profile_Button(
          ),
          SizedBox(height: MediaQuery.of(context).size.height/90),
          Center(child:
          Text(text, style:
          TextStyle(fontSize: MediaQuery.of(context).size.width/9,
              color: kFontColor))),
          SizedBox(height: MediaQuery.of(context).size.height/90),
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height/1.74,
              width: MediaQuery.of(context).size.width/1.1,
              decoration: BoxDecoration(
                  boxShadow: [BoxShadow(color: Colors.grey,
                      blurRadius: 10,
                      offset: Offset(0,10
                      )),
                  ],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height/40
          ),
        Center(
          child: Column(
            children: [
              if (button != null) Button(button!, onTap: teste,),
              if (info != null) Padding(
         padding: const EdgeInsets.only(left: 66, right: 66, top: 10),
         child: Text(info!,textAlign: TextAlign.center,),
       ),
            ],
          ),
        )
        ],
      ),
    );
  }
}