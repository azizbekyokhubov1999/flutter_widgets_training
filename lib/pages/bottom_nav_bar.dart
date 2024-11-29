import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int myIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.red,
        currentIndex: myIndex,
        iconSize: 50,
        onTap: (index){
          setState(() {
            myIndex = index;
          });
        },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
              label: "Home"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.account_circle),
              label: "Account",
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.call),
                label: "Call"
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.person),
                label: "Profile"
            ),
          ],
      ),
    );
  }
}
