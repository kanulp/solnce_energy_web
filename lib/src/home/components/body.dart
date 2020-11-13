import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Want to \nGo Solar?".toUpperCase(),
            style: Theme.of(context).textTheme.headline2.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.white
                ),
          ),
          SizedBox(width: 250.0, child: Divider(color: Colors.white)),
          Text(
            "Let us all switch on the Sun,\nthe Bright and Right alternative",
            style: TextStyle(
              fontSize: 21,
              color: Colors.white
            ),
          ),
          FittedBox(
            // Now it just take the required spaces
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 20),
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Color(0xFF372930),
                borderRadius: BorderRadius.circular(34),
              ),
              child: Row(
                children: <Widget>[
                  
                  SizedBox(width: 15),
                
                  Image.asset('assets/images/btn_get_in_touch.png'),
                  SizedBox(width: 15),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}