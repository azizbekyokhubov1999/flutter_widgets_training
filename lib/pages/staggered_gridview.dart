import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class MyStaggeredGridView extends StatelessWidget {
  const MyStaggeredGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: MasonryGridView.builder(
        itemCount: 6,
          gridDelegate: SliverSimpleGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2
          ),
          itemBuilder: (context, index) => Padding(
              padding: EdgeInsets.all(2),
            child: Image.asset("assets/images/sPeople${index + 1}.jpg"),
          )
      ),
    );
  }
}
