import 'package:flutter/material.dart';

class Problems extends StatefulWidget {
  Problems({Key key,this.title}) : super(key: key);
  final String title;

  @override
  _Problems createState() => _Problems();
}

class _Problems extends State<Problems>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("問題集"),
      ),
      body: Center(
        child: Text("いっぱい問題と模範回答のページを並べる？")
      ),
    );
  }
}