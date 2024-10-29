
import 'package:astrology_app/mainPage.dart';
import 'package:astrology_app/mainUser.dart';
import 'package:flutter/material.dart';


class BottomNavigationPage extends StatefulWidget {
const BottomNavigationPage({super.key});

  @override
  State<BottomNavigationPage> createState() => _BottomNavigationPageState();
}

class _BottomNavigationPageState extends State<BottomNavigationPage> {
  int selectedIndex = 0;
  final List<Widget> Pages = [mainPage(), mainUser()];
  void _onItemTapped(int index){
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
        icon: Icon(Icons.brightness_4),
        label: 'News',
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.account_circle),
        label: 'Profile',
      ),
         ],
        currentIndex: selectedIndex,
        onTap: _onItemTapped,
      ) ,
    );
  }
}