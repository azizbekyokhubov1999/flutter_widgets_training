import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: AppBar(
        backgroundColor: Colors.green,
        title: Text("Card"),
        centerTitle: true,
      ),
      body: Center(
        child: Card(
          elevation: 12,
          shadowColor: Colors.black,
          margin: EdgeInsets.all(10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15)
          ),
          color: Colors.white,
          child: SizedBox(
            height: 400,
            width: 300,
            child: Column(
              children: [
                Image.asset("assets/images/tshirt.png"),
                SizedBox(height: 10),
                Text("Nike T-Shirt",
                style: TextStyle(
                    color: Colors.black,
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                ),
                SizedBox(height: 5),
                Text("\$ 89.45",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                        Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                      size: 20,
                    ),
                    Icon(
                      Icons.star_half,
                      color: Colors.yellow,
                      size: 20,
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
