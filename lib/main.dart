import 'package:astrology_app/BottomNavigation.dart';
import 'package:astrology_app/login.dart';
import 'package:astrology_app/mainPage.dart';
import 'package:astrology_app/mainUser.dart';
import 'package:astrology_app/registration.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:cloud_firestore/cloud_firestore.dart';



void main() async{

  runApp(const MyApp());
}


class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
   Widget build(BuildContext context) {
    return MaterialApp(
      home:  login(),
      routes: {
        
        '/main':(context) =>  mainPage(),
        '/UserData':(context) => const mainUser(),
        '/reg':(context) =>  Reg(),
        '/log':(context) => login(),
        '/BottomNavig':(context) => const BottomNavigationPage()
        
      },
        initialRoute: '/log',

    );
  }
}

  
  
