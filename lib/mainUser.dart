import 'package:flutter/material.dart';


class mainUser extends StatelessWidget {
  const mainUser({super.key});
  
  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("AAAAAAAAAAAA"),automaticallyImplyLeading: false,
    ),
      body:Center(
      child:Column(
      children:<Widget>[ 
      Container(
    padding: EdgeInsets.only(top:25),
    color: Colors.white,

    
    child:Column(
        textDirection: TextDirection.ltr,
        crossAxisAlignment: CrossAxisAlignment.start,
        verticalDirection: VerticalDirection.down,
        children: <Widget>[
          Expanded(
              child: Container(color: Colors.teal),
              flex: 3,
          ),
          Expanded(
              child: Container(color: Colors.red),
              flex:1
          ),
          Expanded(
              child: Container(color: Colors.indigoAccent),
              flex: 2,
          )
        ]
      )
    ),
      
      

      ]
      )
      )
    );
  }
}