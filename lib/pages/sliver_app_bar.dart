import 'package:flutter/material.dart';
class MySliverAppBar extends StatelessWidget {
  const MySliverAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange[100],
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
           backgroundColor: Colors.orange,
            expandedHeight: 300,
           // title: Text(
           //   "Sliver app bar"
           // ),
           leading: Icon(Icons.menu,
           size: 20,
             color: Colors.black,
           ),
            floating: true,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              background:  Container(
                height: 100,
                width: 200,
                color: Colors.blue,
              ),
              title: Text("Sliver APP Bar"),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.red,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.red,
                ),
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 300,
                  color: Colors.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
