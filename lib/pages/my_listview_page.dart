import 'package:flutter/material.dart';

class MyListViewPage extends StatelessWidget {
  const MyListViewPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("H & V ListView"),
        centerTitle: true,
        backgroundColor: Colors.deepPurple[300],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 15,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index){
                    return Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(10),
                      child: Center(
                        child: Text("Story $index"),
                      ),
                      color: Colors.deepPurple[200],
                    );
                  }
              ),
            ),

            ListView.builder(
              physics: NeverScrollableScrollPhysics(),
              itemCount: 20,
                shrinkWrap: true,
                itemBuilder: (context, index){
                  return ListTile(
                    title: Text("Feed $index"),
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}
