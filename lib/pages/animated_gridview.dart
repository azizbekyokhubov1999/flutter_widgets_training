import 'dart:math';

import 'package:flutter/material.dart';

class MyAnimatedGridView extends StatefulWidget {
  const MyAnimatedGridView({super.key});

  @override
  State<MyAnimatedGridView> createState() => _MyAnimatedGridViewState();
}

class _MyAnimatedGridViewState extends State<MyAnimatedGridView> {

   final List<String> _data = [
     "Dart",
     "Java",
     "PHP",
     "Ruby",
     "Java Script",
   ];

  final List<String> programmingLanguage = [
    "Python",
    "Go lang",
    "Dart",
    "Java",
    "C++",
    "C#",
   ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Animated GridView"),
        centerTitle: true,
        backgroundColor: Colors.teal[200],
      ),
      body: Column(
        children: [
          Expanded(
              child: GridView.builder(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10
                  ),
                  itemCount: _data.length,
                  itemBuilder: (context, index){
                    return _buildItem(_data[index]);
                  }
              )
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.teal[200],
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15)
                    )
                  ),
                    onPressed: _addNewItem,
                    child: Text("Add language",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 15
                    ),
                    ),
                ),

                //for removing
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red[300],
                      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                      )
                  ),
                  onPressed: _removeItem,
                  child: Text("Remove language",
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 15
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildItem(String item){
    return Card(
      margin: EdgeInsets.symmetric(vertical: 5, horizontal: 12),
      color: Colors.teal[300],
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12)
      ),
      elevation: 0,
      child: Padding(
          padding: EdgeInsets.all(15),
        child: Center(
          child: Text(item,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w500,
          ),
          ),
        ),
      ),
    );
  }

  // function for adding item
void _addNewItem(){
    if(programmingLanguage.isNotEmpty){
      final randomIndex = Random().nextInt(programmingLanguage.length);
      String newLanguage = programmingLanguage[randomIndex];
      setState(() {
        _data.add(newLanguage);
      });
    }
}

void _removeItem(){
    if(_data.isNotEmpty){
      setState(() {
        final removeItem = _data.removeLast();
        programmingLanguage.add(removeItem);
      });
    }
}
}
