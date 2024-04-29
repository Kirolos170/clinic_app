import 'package:flutter/material.dart';

import 'Book_screen.dart';
import 'Home_user_screen.dart';
import 'Profile_screen.dart';
import 'category_screen.dart';
class AllPages extends StatefulWidget {
  const AllPages({super.key});

  @override
  State<AllPages> createState() => _AllPagesState();
}

class _AllPagesState extends State<AllPages> {
  List Screen = [HomeUserScreen() , CategoryScreen() ,BookScreen (),PorfileScreen()] ;
 int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      bottomNavigationBar:BottomNavigationBar(
        onTap: (value){
          setState(() {
            index = value;
          });


        },
        selectedItemColor: Colors.blue, // Set the color for the selected item
        unselectedItemColor: Colors.grey, // Set the color for unselected items
        backgroundColor:Color(0xFF336EA6), // Set the background color
        type: BottomNavigationBarType.fixed, // Ensure all navigation items are visible
        // Current selected index
        currentIndex: index,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'category',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications),
            label: 'Book',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ) ,
      body: Screen[index],
    );
  }
}
