import 'package:flutter/material.dart';

class Navbar extends StatefulWidget {

   Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  int index = 0 ;
  @override
  Widget build(BuildContext context) {

       return (
        BottomNavigationBar(
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
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notifications',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Profile',
            ),
          ],
        ) );
  }
}


