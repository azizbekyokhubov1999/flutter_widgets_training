import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class MyFlRatingBar extends StatefulWidget {
  const MyFlRatingBar({super.key});

  @override
  State<MyFlRatingBar> createState() => _MyFlRatingBarState();
}

class _MyFlRatingBarState extends State<MyFlRatingBar> {

  double _ratingValue = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Rating bar"),
        centerTitle: true,
        backgroundColor: Colors.green[300],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: RatingBar.builder(
              itemCount: 6,
                minRating: 3,
                initialRating: 1,
                direction: Axis.horizontal,
                allowHalfRating: true,
                itemBuilder: (context, _) =>
                Icon(Icons.star,
                color: Colors.amber,
                ),
                onRatingUpdate: (value){
                  setState(() {
                    _ratingValue = value;
                  });
                }
            ),
          ),
          SizedBox(height: 20),
          Text("Your rating score: ${_ratingValue}",
          style: TextStyle(
            fontSize: 18,
          ),
          )
        ],
      ),
    );
  }
}
