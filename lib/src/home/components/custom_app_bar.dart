import 'package:flutter/material.dart';
import 'package:solnce_energy_web/src/services/services_home.dart';

import 'menu_item.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(46),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -2),
            blurRadius: 30,
            color: Colors.black.withOpacity(0.16),
          ),
        ],
      ),
      child: Row(
        children: <Widget>[
          Image.asset(
            "assets/images/logo.png",
            height: 50,
            alignment: Alignment.topCenter,
          ),
          SizedBox(width: 5),
          Text(
            "Solnce Energy".toUpperCase(),
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          MenuItem(
            title: "Home",
            press: () {

            },
          ),
          MenuItem(
            title: "Services",
            press: () {
               Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ServicesHomePage()),
        );
            },
          ),
          MenuItem(
            title: "Blog",
            press: () {},
          ),
          MenuItem(
            title: "About Us",
            press: () {},
          ),
          MenuItem(
            title: "R&D",
            press: () {},
          ),
          DefaultButton(
            text: "Contact",
            press: () {},
          ),
        ],
      ),
    );
  }
}