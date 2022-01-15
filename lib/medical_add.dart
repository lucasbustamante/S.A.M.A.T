import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:tamas/design/colors.dart';

import 'design/button.dart';
import 'main.dart';

class Medical_Add extends StatelessWidget {
  const Medical_Add ({Key? key}) : super(key: key);

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
                  Button('  voltar  ',
                    onTap: () => Navigator.pop(context)
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height/40),
              Stack(
                children: [Container(
                  height: MediaQuery.of(context).size.height/1.7,
                  width: MediaQuery.of(context).size.width/1.1,
                  decoration: BoxDecoration(
                      boxShadow: [BoxShadow(
                          color: Colors.grey, blurRadius: 10, offset: Offset(0,10)
                      )],
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20)
                  ),
                ),
                  Padding(
                    padding: const EdgeInsets.only(top: 380),
                    child: Lottie.asset('assets/images/calendar.json'),
                  )
                ]
              ),
              Container(
                child: Center(
                  child: Text('Adicione seus remédios , configure os dias e'
                      '\ndefina os horários.'
                      '\n(exclua seus remédios após o término '
                      '\norientado pelo médico)',
                  textAlign: TextAlign.center, style: TextStyle(
                      color: kPrimaryColor
                    ),),
                ),
                height: MediaQuery.of(context).size.height/9,
                width: MediaQuery.of(context).size.width/1.1,
                decoration: BoxDecoration(
                  border: Border.all(color: kPrimaryColor, width: 1.8),
                  borderRadius: BorderRadius.circular(20)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
