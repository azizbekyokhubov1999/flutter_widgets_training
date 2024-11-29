
import 'package:flutter/material.dart';

Widget buildImageContainer(
    Color color,
    String title,
    String subTitle,
    String imagePath,
    ){
  return Container(
    color: color,
    child: Column(
      children: [
        Image.asset(imagePath,
        fit: BoxFit.cover,
        width: double.infinity,
        ),
        SizedBox(height: 59),
        Text(title,
        style: TextStyle(
          fontSize: 30,
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
        ),
        SizedBox(height: 20),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 50),
          child: Text(subTitle,
          style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: Colors.black
          ),
          ),
        )
      ],
    ),
  );
}