import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamas/profile.dart';

import 'design/colors.dart';

class Profile_Button extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.push(context, PageTransition(child: Profile(),
          type: PageTransitionType.topToBottom));},
      child: Container(
        height: MediaQuery.of(context).size.height/17,
        width: MediaQuery.of(context).size.height/17,
        decoration: BoxDecoration(color: Colors.white,
            boxShadow: [BoxShadow(
              color: Colors.grey,
              blurRadius: 10,
              offset: Offset(0,10)
            )],
            shape: BoxShape.circle,
            border: Border.all(color: kPrimaryColor,width: 1.5)),
        child: Icon(Icons.person, size: MediaQuery.of(context).size.width/12,
          color: kPrimaryColor,),
      ),
    );
  }
}
