import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class MyConvexNavBar extends StatefulWidget {
  const MyConvexNavBar({super.key});

  @override
  State<MyConvexNavBar> createState() => _MyConvexNavBarState();
}

class _MyConvexNavBarState extends State<MyConvexNavBar> {

  int _currentIndex = 0;

  final List<Map<String, dynamic>> _screens = [
    {
      "icon" : Icons.home,
      "text" : "Welcome to code example",
    },
    {
      "icon" : Icons.favorite,
      "text" : "Favourite"
    },
    {
      "icon" : Icons.search,
      "text" : "Search here..."
    },
    {
      "icon" : Icons.notifications,
      "text" : "Notification"
    },
    {
      "icon" : Icons.person,
      "text" : "Your Profile"
    }
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("C O N V E X   N A V B A R"),
        centerTitle: true,
        backgroundColor: Colors.blue[300],
        elevation: 0,
      ),
      body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(
                  _screens[_currentIndex]["icon"],
                  size: 80,
                  color: Colors.indigo[600],
                ),
                SizedBox(height: 25),
                Text(
                  _screens[_currentIndex]["text"],
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.w500,

                  ),
                )
              ],
            ),
          )
      ),

      bottomNavigationBar: ConvexAppBar(
        backgroundColor: Colors.indigo[200],
          color: Colors.white,
          activeColor: Colors.indigo[700],
          style: TabStyle.react,
        curveSize: 70,
        items: [
            TabItem(
                icon: Icon(Icons.home),
              title: 'Home'
            ),
            TabItem(
                icon: Icon(Icons.favorite),
              title: 'Fav'
            ),
            TabItem(
                icon: Icon(Icons.search),
              title: 'Search',
            ),
            TabItem(
                icon: Icon(Icons.notifications),
              title: 'Notify'
            ),
            TabItem(
                icon: Icon(Icons.person),
              title: 'Profile'
            )
          ],
        initialActiveIndex: 0,
        onTap: (int index){
            setState(() {
              _currentIndex = index;
            });
        },
      ),

    );
  }
}
