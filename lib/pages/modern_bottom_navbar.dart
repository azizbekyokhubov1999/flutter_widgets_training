import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyModernBNB extends StatefulWidget {
  const MyModernBNB({super.key});

  @override
  State<MyModernBNB> createState() => _MyModernBNBState();
}

class _MyModernBNBState extends State<MyModernBNB> {

  int _selectIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 25,
  );

  static const List<Widget> _widgetOptions = <Widget>[
    Center(
      child: Text("Home",
      style: optionStyle,
      ),
    ),
    Center(
      child: Text("Search",
        style: optionStyle,
      ),
    ),
    Center(
      child: Text("Likes",
        style: optionStyle,
      ),
    ),
    Center(
      child: Text("Profile",
        style: optionStyle,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AnimatedSwitcher(duration: Duration(milliseconds: 300),
         child: _widgetOptions.elementAt(_selectIndex),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.asset("assets/images/njr10.jpg",
                width: double.infinity,
                  height: double.infinity,
                  fit: BoxFit.cover,
                ),
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.deepPurple[100]
        ),
        child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: GNav(
                selectedIndex: _selectIndex,
                onTabChange: (value){
                  setState(() {
                    _selectIndex = value;
                  });
                },
                rippleColor: Colors.grey[200]!,
                  hoverColor: Colors.grey[200]!,
                  gap: 7,
                  activeColor: Colors.white,
                  iconSize: 20,
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 13),
                  tabBackgroundColor: Colors.black87,
                  backgroundColor: Colors.deepPurple.shade100,
                  tabBorderRadius: 26,
                  tabs: [
                    GButton(
                        icon: Icons.home,
                      text: "Home",
                      textSize: 17,
                    ),
                    GButton(
                      icon: Icons.search,
                      text: "Search",
                      textSize: 17,
                    ),
                    GButton(
                      icon: Icons.favorite,
                      text: "Likes",
                      textSize: 17,
                    ),
                    GButton(
                      icon: Icons.person,
                      text: "Profile",
                      textSize: 17,
                    ),
                  ]
              ),
            )
        ),
      ),
    );
  }
}
