import 'package:flutter/material.dart';

class Detail_data extends StatefulWidget {
  const Detail_data({Key? key}) : super(key: key);

  @override
  State<Detail_data> createState() => _Detail_data();
}

class _Detail_data extends State<Detail_data> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Detail Page')),
      body: Center(
        child : Text("Detail", style: TextStyle(fontSize: 40)),

      ),
    );
  }
}
