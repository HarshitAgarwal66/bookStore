import 'package:book_store/style.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class pdf extends StatelessWidget {
  pdf({Key? key,required this.url,required this.name}) : super(key: key);
  var url;
  var name;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        centerTitle: true,
        title: Text(name),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(
          bottomRight: Radius.circular(15),
          bottomLeft: Radius.circular(15.0))),
      ),
      body: SfPdfViewer.network(this.url),
    );
  }
}