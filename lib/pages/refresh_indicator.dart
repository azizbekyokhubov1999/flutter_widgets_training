import 'package:flutter/material.dart';
import 'package:liquid_pull_to_refresh/liquid_pull_to_refresh.dart';

class MyRefreshIndicator extends StatefulWidget {
  const MyRefreshIndicator({super.key});

  @override
  State<MyRefreshIndicator> createState() => _MyRefreshIndicatorState();
}

class _MyRefreshIndicatorState extends State<MyRefreshIndicator> {

  Future<void> _refreshManager() async {
    return await Future.delayed(Duration(seconds: 2));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[200],
      body: LiquidPullToRefresh(
        height: 200,
        backgroundColor: Colors.green,
        color: Colors.green[400],
        animSpeedFactor: 3,
        onRefresh: _refreshManager,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
               borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(25),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: 200,
                  color: Colors.green,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
