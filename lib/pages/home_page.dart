import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset("assets/images/nature1.jpg"),
            Image.asset("assets/images/tshirt.png"),
            Image.network("https://digitalhub.fifa.com/transform/c6e4f60d-d262-413a-b54a-27fa565eb934/England-v-France-Quarter-Final-FIFA-World-Cup-Qatar-2022?io=transform:fill,width:50,width:720&quality=70"),
            Image.asset("assets/images/nature1.jpg"),



          ],
        ),
      ),

    );

  }
}
