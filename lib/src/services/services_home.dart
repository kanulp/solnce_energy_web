import 'package:flutter/material.dart';

class ServicesHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
        height: size.height,
        // it will take full width
        width: size.width,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/services/service_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            // // It will cover 1/3 of free spaces
            Text('OUR',style: TextStyle(color: Colors.black,fontSize: 40.0),),
            Text('SERVICES',style: TextStyle(color: Colors.red,fontSize: 50.0,fontWeight: FontWeight.bold),),
            // Spacer(
            //   flex: 2,
            // ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
              Column(
                children: [
                  Image.asset('assets/images/services/service_rooftop.png'),
                  Text('Solar Rooftop Installation'),
                  Text('For household that want less electricity bill and use green energy'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/services/service_comm.png'),
                  Text('Commercial Solar Installation'),
                  Text('For company that needs to optimize their energy.'),
                ],
              ),
            ],),
             Row(
                mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
             
               children: [
              Column(
                children: [
                  Image.asset('assets/images/services/service_loan.png'),
                  Text('Solar Loan'),
                  Text('We have tie ups with different banks'),
                ],
              ),
              Column(
                children: [
                  Image.asset('assets/images/services/service_cleaning.png'),
                  Text('Maintenance and Cleaning'),
                  Text('Solar maintenance with a solar robot'),
                ],
              ),
            ],),

            // it will cover 2/3 of free spaces
          ],
        ),
      ),
    );
  }
}