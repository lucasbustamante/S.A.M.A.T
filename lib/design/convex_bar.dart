import 'package:convex_bottom_bar_fix/convex_bottom_bar_fix.dart';
import 'package:flutter/material.dart';
import 'package:tamas/design/colors.dart';
import 'package:tamas/info_container.dart';

class Convex_Bar extends StatefulWidget {


  @override
  _Convex_BarState createState() => _Convex_BarState();
}

class _Convex_BarState extends State<Convex_Bar> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: kBackGroundColor,
          body: Column(
            children: [
              Expanded(child:
              TabBarView(children: [
                Info_Container(
                  'REMÉDIOS',
                  button: 'adicionar remédio',
                info: 'Adicione novos remédios sempre que necessário'),
                Info_Container('HISTÓRICO',
                    ),
                Info_Container('CONFIGURAÇÕES'),
              ])),
            ],
          ),
          bottomNavigationBar: ConvexAppBar(
            items: [
              TabItem(icon: Icons.medication_outlined, title: 'Remédios'),
              TabItem(icon: Icons.history, title: 'Histórico'),
              TabItem(icon: Icons.settings, title: 'Configurações')
            ],
            style: TabStyle.react,
            color: kPrimaryColor,
            backgroundColor: Colors.white,
            activeColor: kPrimaryColor,
          ),
        )
    );
  }
}
