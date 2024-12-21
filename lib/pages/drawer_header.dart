import 'package:flutter/material.dart';

class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("D R A W E R  H E A D E R"),
        centerTitle: true,
        backgroundColor: Colors.indigo.shade300,
      ),
      drawer: Drawer(
        width: 250,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.blue.shade100
              ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage("assets/images/cr7.jpg"),
                    ),
                    SizedBox(height: 10),
                    Text("Codding example",
                    style: TextStyle(
                        fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black
                    ),
                    ),
                    Text("aziz1234@gmail.com",
                    style: TextStyle(
                      fontSize: 12
                    ),
                    )
                  ],
                ),
            ),
            ListTile(
              leading: Icon(
                  Icons.home,
              ),
              title: Text("Home"),
            ),
            ListTile(
              leading: Icon(
                Icons.settings,
              ),
              title: Text("Settings"),
            ),
            ListTile(
              leading: Icon(
                Icons.info,
              ),
              title: Text("About Us"),
            ),
            ListTile(
              leading: Icon(
                Icons.logout,
              ),
              title: Text("Exit"),
            ),

          ],
        ),
      ),
      body: Center(
        child: Text("Swipe right to open drawer",
        style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
