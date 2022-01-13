import 'package:flutter/material.dart';

import 'design/colors.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          height: MediaQuery.of(context).size.height/17,
          width: MediaQuery.of(context).size.height/17,
          decoration: BoxDecoration(color: Colors.white,
              borderRadius: BorderRadius.circular(40),
              border: Border.all(color: kPrimaryColor,width: 1.5)),
        ),
      ],
    );
  }
}
