import 'package:flutter/material.dart';

class MyExpansionTile  extends StatelessWidget {
  const MyExpansionTile ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Expansion Tile"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[200],
      ),
      body: ListView(
        children: [
          ExpansionTile(
              title: Text("Profile settings",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.black
              ),
              ),
            subtitle: Text("Manage your profile settings",
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w300,
              color: Colors.black45
            ),
            ),
            leading: CircleAvatar(
              backgroundColor: Colors.deepPurple[100],
              child: Icon(Icons.person),
            ),
            trailing: Icon(Icons.keyboard_arrow_down,
            color: Colors.deepPurple,
            ),
            backgroundColor: Colors.deepPurple[50],
            collapsedBackgroundColor: Colors.deepPurple[100]?.withOpacity(0.2),
            tilePadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            childrenPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            children: [
              ListTile(
                leading: Icon(Icons.email,
                color: Colors.deepPurple,
                ),
                title: Text("Change email"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.lock,
                color: Colors.deepPurple,
                ),
                title: Text("Change password"),
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.notifications,
                color: Colors.deepPurple,
                ),
                title: Text("Notification settings"),
              )
            ],
          )
        ],
      ),
    );
  }
}
