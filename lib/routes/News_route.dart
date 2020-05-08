import 'package:flutter/material.dart';

class News extends StatefulWidget {
  News({Key key,this.title}) : super(key: key);
  final String title;

  @override
  _News createState() => _News();
}

class _News extends State<News>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ニュース"),
      ),
      body : Text(
        '企業情報とかのニュースを載せる？'
      ),
    );
  }
}