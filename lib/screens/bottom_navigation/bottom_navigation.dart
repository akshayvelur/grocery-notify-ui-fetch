

import 'package:bw1_ui/screens/home_page/home_page.dart';
import 'package:bw1_ui/screens/utils/colors/colors.dart';
import 'package:bw1_ui/screens/utils/style/font.dart';
import 'package:flutter/material.dart';


class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _currentIndex = 0; // Track the selected tab index

  // Pages for each tab
  final List<Widget> _pages = [
    Center(child: HomePage()),
    Center(child: Text('Cart')),
    Center(child: Text('My Order')),
     Center(child: Text('Account'))
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: _pages[_currentIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, 
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _currentIndex = index; // Update tab index
          });
        },selectedLabelStyle:bottomNavigationStyle(offWhiteClr,size: 13,Fweight: 600) ,
        unselectedLabelStyle: bottomNavigationStyle(offWhiteClr,size: 13,Fweight: 600),
        items: [
          BottomNavigationBarItem(
            icon: Image.asset("assets/Vector.png",scale: 1.3),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/Group 197 (1).png",scale: 1.3,),
            label: 'Cart',
          ),
         BottomNavigationBarItem(
            icon: Image.asset("assets/Group 196 (2).png",scale: 1.3),
            label: 'My Order',
          ),   BottomNavigationBarItem(
            icon: Image.asset("assets/Group 201.png",scale: 1.3),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}
