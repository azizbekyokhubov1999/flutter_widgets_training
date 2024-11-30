import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class MyPDFReader extends StatefulWidget {
  const MyPDFReader({super.key});

  @override
  State<MyPDFReader> createState() => _MyPDFReaderState();
}

class _MyPDFReaderState extends State<MyPDFReader> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple[300],
        title: Text("PDF reader"),
        centerTitle: true,
      ),
      // for read from assets
      // body: SfPdfViewer.asset(
      //   "assets/ITS.pdf"
      // ),
      
      // for read from network
      
     body: SfPdfViewer.network('https://cdn.syncfusion.com/content/PDFViewer/flutter-succinctly.pdf'),
      
    );
  }
}
