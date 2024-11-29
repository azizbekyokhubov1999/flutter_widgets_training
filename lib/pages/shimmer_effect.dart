import 'dart:async';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class MyShimmerEffect extends StatefulWidget {
  const MyShimmerEffect({super.key});

  @override
  State<MyShimmerEffect> createState() => _MyShimmerEffectState();
}

class _MyShimmerEffectState extends State<MyShimmerEffect> {

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 3), () {
      setState(() {
        _isLoading = false;
      });
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(16),
      child: _isLoading ? _buildShimmerEffect() : _buildContent(),
    );
  }

  Widget _buildShimmerEffect() {
    return Shimmer.fromColors(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 200,
              color: Colors.white,
            ),
            SizedBox(height: 16),
            Container(
              width: 150,
              height: 20,
              color: Colors.white,
            ),
            SizedBox(height: 16),
            Container(
              width: 100,
              height: 120,
              color: Colors.white,
            ),
            SizedBox(height: 16),
            Container(
              width: 200,
              height: 18,
              color: Colors.white,
            )


          ],
        ),
        baseColor: Colors.grey.shade400,
        highlightColor: Colors.grey.shade100
    );
  }

  Widget _buildContent(){
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.asset("assets/images/nature2.jpg",
        width: double.infinity,
          height: 200,
          fit: BoxFit.cover,
        ),
        SizedBox(height: 16),
        Text("Nature Serenity",
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        ),
        Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry."),
        SizedBox(height: 8),
        Text("Lorem Ipsum has been the industry's standard dummy text ever since the 1500s")
      ],
    );
  }


}
