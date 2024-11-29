import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

class MyReadMoreText extends StatefulWidget {
  const MyReadMoreText({super.key});

  @override
  State<MyReadMoreText> createState() => _MyReadMoreTextState();
}

class _MyReadMoreTextState extends State<MyReadMoreText> {
  String text = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10),
              child: ReadMoreText(
                  text,
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: Colors.black
                ),
                textAlign: TextAlign.justify,
                trimCollapsedText: "Show more",
                moreStyle: TextStyle(
                  color: Colors.blue,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic
                ),
                trimExpandedText: "Show less",
                lessStyle: TextStyle(
                    color: Colors.red,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    fontStyle: FontStyle.italic
                ),
                trimLines: 5,
              ),
            )
          ],
        ),
      ),
    );
  }
}
