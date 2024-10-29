import 'package:astrology_app/login.dart';
import 'package:astrology_app/mainPage.dart';
import 'package:astrology_app/user.dart';
import 'package:flutter/material.dart';




// ignore: must_be_immutable
class Reg extends StatelessWidget {
  Reg({super.key});
  User id1 = User('', '','','');

  late String NewName; 
  late String NewDateB;
  late String LoginUs;
  late String PassUS;
  final textController1 = TextEditingController();
  final textController2 = TextEditingController();
  final textController3 = TextEditingController();
  final textController4 = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 172,190,223),


      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 92, 81, 122),
        automaticallyImplyLeading: false,
        title: const Text('Registration',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),


        
      body:SingleChildScrollView(
        child: Center(
        child: ConstrainedBox(
          constraints: BoxConstraints.tightFor(width: 1000, height: 750),
          child: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
        ConstrainedBox(  
          constraints: BoxConstraints.tightFor(width: 350, height: 500),
          child: Container(
           padding: EdgeInsets.all(30),
            decoration: BoxDecoration(     
            color: Color.fromARGB(255, 129, 115, 168),
          borderRadius: BorderRadius.circular(20),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
               
              Container(child:Icon
              (Icons.account_circle,
               size: 100,
                color: Color.fromARGB(255, 172,190,223))),
             
              Container(
                  alignment: Alignment.center,
                 padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
            color: const Color.fromARGB(255, 160, 144, 207),
          
          borderRadius: BorderRadius.circular(20),
        ),
                  child: new TextFormField(
                    
                    controller: textController1,
                    decoration: new InputDecoration(labelText: "User name"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
                ),
                
              Container(
                  alignment: Alignment.center,
                 padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
                  color: Color.fromARGB(255, 160, 144, 207),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: new TextFormField(
                    
                    controller: textController2,
                    decoration: new InputDecoration(labelText: "Birthday"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
                ),
                
              Container(
                  alignment: Alignment.center,
                 padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
                  color: Color.fromARGB(255, 160, 144, 207),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: new TextFormField(
                    
                    controller: textController3,
                    decoration:  InputDecoration(labelText: "Login"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
                ),

              Container(
                  alignment: Alignment.center,
                 padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
                  color: Color.fromARGB(255, 160, 144, 207),
                  borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    
                    controller: textController4,
                    decoration:  const InputDecoration(labelText: "Password"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
                ),

              ElevatedButton(
                    style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 92, 81, 122)),
                    onPressed:(){
                  NewName = textController1.text.trim();
                  NewDateB = textController2.text.trim();
                  LoginUs = textController3.text.trim();
                  PassUS = textController4.text.trim();
                  id1 = User(NewName,NewDateB,LoginUs,PassUS);
                  ListUser.add(id1);
                  
                  Navigator.of(context).pushNamed('/BottomNavig');
                  }, 
                  
                  child: const Text(">",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)),
                   
            ],
          ),
          ),
        ),
       
     
        GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/log');
              },
              child: Row (
               textDirection: TextDirection.ltr,
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ 
                const Text('Уже есть аккаунт?',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                const Text('Войти',style: TextStyle(color: Color.fromARGB(255, 107, 17, 17)))


                 ]), 
               ),
        ] 
      ),
      ),
     
      )
      )
    ));
 }
}






