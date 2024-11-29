import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green[200],
          title: Text("T A B B A R"),
          centerTitle: true,
          bottom: TabBar(
              tabs: [
                Tab(
                  icon: Icon(Icons.home,
                    size: 20,
                    color: Colors.deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.person,
                    size: 20,
                    color: Colors.
                    deepPurple,
                  ),
                ),
                Tab(
                  icon: Icon(Icons.settings,
                    size: 20,
                    color: Colors.deepPurple,
                  ),
                ),
              ]
          ),
        ),
        body: Expanded(
          child: TabBarView(
              children: [
                Container(
                  color: Colors.blue,
                    child: Center(
                      child: Text("1ST TAB",
                      style: TextStyle(
                        fontSize: 25,
                        color: Colors.black
                      ),
                      ),
                    ),
                ),
                Container(
                  color: Colors.red,
                  child: Center(
                    child: Text("2ND TAB",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
                Container(
                  color: Colors.yellow,
                  child: Center(
                    child: Text("3RD TAB",
                      style: TextStyle(
                          fontSize: 25,
                          color: Colors.black
                      ),
                    ),
                  ),
                ),
              ]
          ),
        ),
      ),
    );
  }
}
