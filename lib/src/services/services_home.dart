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
            
            SizedBox(height: 50.0,),
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
              VerticalDivider(width: 2, color: Colors.green,thickness: 2.0),
              Divider(color: Colors.green,thickness: 5.0,),
              Column(
                children: [
                  Image.asset('assets/images/services/service_comm.png'),
                  Text('Commercial Solar Installation'),
                  Text('For company that needs to optimize their energy.'),
                ],
              ),
            ],),
            Divider(color: Colors.green,thickness: 2.0,indent: 150.0,endIndent: 100.0,),
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
              VerticalDivider(color: Colors.green,thickness: 2.0,indent: 150.0,endIndent: 100.0),
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