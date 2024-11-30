import 'package:flutter/material.dart';

class MyHiddenAppBar extends StatelessWidget {
  const MyHiddenAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
          headerSliverBuilder: (context, innerDataIsScrolled) => [
            SliverAppBar(
              elevation: 0,
              floating: true,
              snap: true,
              title: Text("Scroll for hide"),
              backgroundColor: Colors.deepPurple[300],
            )
          ],
          body: ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text("Data $index"),
                );
              }
          )
      ),
    );
  }
}
