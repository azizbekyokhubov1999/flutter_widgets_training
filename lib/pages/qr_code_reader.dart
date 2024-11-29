import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

class MyQrCodeReader extends StatefulWidget {
  const MyQrCodeReader({super.key});

  @override
  State<MyQrCodeReader> createState() => _MyQrCodeReaderState();
}

class _MyQrCodeReaderState extends State<MyQrCodeReader> {

  String? data;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Qr code reader",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            QrImageView(
                data: data?? "",
              embeddedImage: AssetImage("assets/images/logopng.png"),
              embeddedImageStyle: QrEmbeddedImageStyle(
                  size:  Size(60, 60)
              ),
              eyeStyle: QrEyeStyle(
                eyeShape: QrEyeShape.circle,
                color: Colors.green
              ),
            ),
            SizedBox(height: 15),
            TextField(
              onChanged: (value){
                setState(() {
                  data = value;
                });
              },
              decoration: InputDecoration(
                labelText: "Enter data"
              ),
            )
          ],
        ),
      ),
    );
  }
}
