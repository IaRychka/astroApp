
import 'package:flutter/material.dart';





// ignore: must_be_immutable
class login extends StatelessWidget {
   login({super.key});

  late String LogUs;
  late String PasswordUs;

 final textController5 = TextEditingController();
 final textController6 = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255,216,226,245),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 92, 81, 122),
        title: const Text('Login',
        style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),),


           
      body:SingleChildScrollView(
        child: ConstrainedBox(
          constraints: const BoxConstraints.tightFor(width: 10000, height: 750),
          child: Center(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
        ConstrainedBox(  
          constraints: const BoxConstraints.tightFor(width: 350, height: 500),
          child: Container(
           padding: const EdgeInsets.all(30),
            decoration: BoxDecoration(     
            color: const Color.fromARGB(255, 179,172,223),
          borderRadius: BorderRadius.circular(20),
        ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[ 
               
              Container(child:Icon
              (Icons.account_circle,
               size: 100,
                color: Color.fromARGB(255,216,226,245))),
             
              Container(
                  alignment: Alignment.center,
                 padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
            color: Color.fromARGB(255, 160, 144, 207),
          
          borderRadius: BorderRadius.circular(20),
        ),
                  child: new TextFormField(
                    
                    controller: textController5,
                    decoration: new InputDecoration(labelText: "Login"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
           ),

              Container(
                  alignment: Alignment.center,
                 padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
                 margin: EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                  decoration: BoxDecoration(     
            color: Color.fromARGB(255, 160, 144, 207),
          
          borderRadius: BorderRadius.circular(20),
        ),
                  child: new TextFormField(
                    
                    controller: textController6,
                    decoration: new InputDecoration(labelText: "Password"),
                    keyboardType: TextInputType.emailAddress,
                  ),
                  width: 400.0,
                  height: 50.0,
           ),

                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromARGB(255, 92, 81, 122)),
                    onPressed:(){
                  LogUs = textController5.text.trim();
                  PasswordUs = textController6.text.trim();
                  
                  
                 Navigator.of(context).pushNamed('/BottomNavig');}, 
                  
                  child: Text(">",
                  style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),)),
                   

            ],),
           )),
            GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed('/reg');
              },
              child: Row (
               textDirection: TextDirection.ltr,
               mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[ 
                Text('Еще нет аккаунта??',
                style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),),
                Text('Регистрация',style: TextStyle(color: Color.fromARGB(255, 107, 17, 17)))


                 ]), 
               ),

           ])
           )
            )
            ,
    ));
  }
}