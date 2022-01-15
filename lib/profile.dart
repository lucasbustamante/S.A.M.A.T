import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamas/design/colors.dart';
import 'package:tamas/info_container.dart';
import 'package:tamas/profile_button.dart';

import 'design/button.dart';
import 'main.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBackGroundColor,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Button('voltar',
                      onTap: () => Navigator.pop(context)
            ),
                ],
              ),
              Container(
                child: Icon(Icons.person, size: 100, color: kPrimaryColor,),
                height: MediaQuery.of(context).size.height/7,
                width: MediaQuery.of(context).size.height/7,
                decoration: BoxDecoration(color: Colors.white,
                border: Border.all(color: kPrimaryColor, width: 3,),
                    shape: BoxShape.circle,
                  boxShadow: [BoxShadow(
                    color: Colors.grey,
                    blurRadius: 10,
                    offset: Offset(0,10)
                  )]
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height/30),
              Container(
                height: MediaQuery.of(context).size.height/1.45,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  boxShadow: [BoxShadow(
                    color: Colors.grey, blurRadius: 10, offset: Offset(0,10)
                  )],
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20)
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
