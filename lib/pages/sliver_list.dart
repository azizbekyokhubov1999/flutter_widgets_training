import 'package:flutter/material.dart';

class MySliverList extends StatelessWidget {
   MySliverList({super.key});

  final List<String> items = List.generate(
      25,
      (index) => "Item $index"
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 200,
            pinned: true,
            backgroundColor: Colors.blue[200],
            flexibleSpace: FlexibleSpaceBar(
              title: Text(
                  "S L I V E R   L I S T",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20
                ),
              ),
              background: Image.asset("assets/images/nature3.jpg",
              fit: BoxFit.cover,
              ),
            ),
          ),

          SliverToBoxAdapter(
            child: Padding(
                padding: EdgeInsets.all(10),
              child: Text("Sliver List of Items: ",
              style: TextStyle(
                fontSize: 22,
                color: Colors.teal[400],

              ),
              ),
            ),
          ),

          SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: 25,
                      (BuildContext context, int index){
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                  decoration: BoxDecoration(
                    color: Colors.primaries[index%Colors.primaries.length].shade200,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black26,
                        offset: Offset(0, 3),
                        blurRadius: 4.0
                      )
                    ]
                  ),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    title: Text(
                      items[index],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),
                    subtitle: Text("List created by Azizbek",
                    style: TextStyle(
                      color: Colors.black
                    ),
                    ),
                    leading: Icon(Icons.list,
                    color: Colors.teal,
                    ),
                    trailing: Icon(Icons.arrow_forward_ios,
                    color: Colors.black45,
                    ),
                  ),
                ); 
              })
          )
        ],
      ),
    );
  }
}
