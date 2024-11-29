import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDashboardPage extends StatefulWidget {
  const MyDashboardPage({super.key});

  @override
  State<MyDashboardPage> createState() => _MyDashboardPageState();
}

class _MyDashboardPageState extends State<MyDashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.zero,
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.deepPurple[500],
              borderRadius: BorderRadius.only(bottomRight: Radius.circular(70)),
            ),
            child: Column(
              children: [
                SizedBox(height: 60),
                ListTile(
                  contentPadding: EdgeInsets.symmetric(horizontal: 40),
                  title: Text("Hi Steve!",
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                  ),
                  subtitle: Text("Good Morning!",
                  style: Theme.of(context).textTheme.titleMedium ?.copyWith(color: Colors.white54),
                  ),
                  trailing: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage("assets/images/lm10.jpg"),
                  ),
                ),
              ],
            ),
          ),

          //for body
          Container(
            color: Colors.deepPurple[500],
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(100)),
              ),
              child: GridView.count(
                crossAxisCount: 2,
                shrinkWrap: true,
                crossAxisSpacing: 35,
                mainAxisSpacing: 30,
                physics: AlwaysScrollableScrollPhysics(),
                children: [
                  itemDashboard(
                      "Videos",
                      CupertinoIcons.play_rectangle,
                      Colors.deepOrange,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Trash",
                      CupertinoIcons.trash,
                      Colors.green,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Lock",
                      CupertinoIcons.lock,
                      Colors.yellow,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Setting",
                      CupertinoIcons.settings,
                      Colors.blue,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Upload",
                      CupertinoIcons.add_circled,
                      Colors.deepPurple,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Contacts",
                      CupertinoIcons.phone,
                      Colors.teal,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "Favourite",
                      CupertinoIcons.heart,
                      Colors.red,
                      context,
                      iconSize: 60
                  ),
                  itemDashboard(
                      "About",
                      CupertinoIcons.question_circle,
                      Colors.grey,
                      context,
                      iconSize: 60
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

itemDashboard(String title, IconData iconData, Color background, BuildContext context,
{double iconSize = 30}
) => Container(
  decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(10),
    boxShadow: [
      BoxShadow(
        offset: Offset(0, 5),
        color: Theme.of(context).primaryColor.withOpacity(.2),
        spreadRadius: 2,
        blurRadius: 5
      )
    ]
  ),

  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
      Container(
        decoration: BoxDecoration(
          color: background,
          shape: BoxShape.circle
        ),
        child: Icon(iconData, color: Colors.white, size: iconSize,),
      ),
      SizedBox(height: 8),
      Text(title,
      style: Theme.of(context).textTheme.titleMedium
      )
    ],
  ),
);
