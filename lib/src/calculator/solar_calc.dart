import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {

  @override
  _CalculatorPageState createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int groupVal = 0;

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
            image: AssetImage("assets/images/services/calc_bg.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(children: [
            Text('SOLAR',style: TextStyle(color: Colors.black,fontSize: 40.0),),
            Text('CALCULATOR',style: TextStyle(color: Colors.red,fontSize: 50.0,fontWeight: FontWeight.bold),),
            Container(child: 
              Column(
                children: [
                  Row(
                    children: [
                      Radio(groupValue: groupVal, onChanged: (int value) { 
                        setState(() {
                          groupVal = value;
                        });
                       }, value: 1,),
                       Text('Toronto'),
                      Radio(groupValue: groupVal, onChanged: (int value) { 
                        setState(() {
                           groupVal = value;
                        });
                       }, value: 2,),
                      Text('GEB'),

                    ],
                  ),
                  TextField(decoration: InputDecoration(hintText: 'Your Location'),),
                  TextField(decoration: InputDecoration(hintText: 'Enter Monthly Unit Consuption'),),
                  RaisedButton(onPressed: null,color: const Color(0xff434343),child: Text('Residential'),),
                  RaisedButton(onPressed: null,color: const Color(0xff434343),child: Text('Commercial'),),
                  RaisedButton(onPressed: null,color: const Color(0xffC4BB5E),child: Text('Calculate'),),
                  Text('* DGVCL BILLING CYCLE 2 MONTH, TORRENT BILLING CYCLE 1 MONTH')
                ],
              )
            ,),
        ],),
      )
    );
  }
}