import 'package:flutter/material.dart';

class MyGridViewTile extends StatelessWidget {
  const MyGridViewTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("G R I D   T I L E"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
      ),
      body: GridView.count(
          crossAxisCount: 2,
        padding: EdgeInsets.all(10),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        children: List.generate(
            12,
            (index) {
              return GridTile(
                header: Container(
                  color: Colors.brown.shade200,
                  child: Text("Header ${index + 1 }",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),
                  ),
                ),
                  footer: Container(
                    color: Colors.green[300],
                    child: Text("Footer ${index + 1}",
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Colors.white
                    ),
                    ),
                  ),
                  child: Center(
                    child: Image.asset("assets/images/nature3.jpg"),
                  )
              );
            }
        ),

      ),
    );
  }
}
