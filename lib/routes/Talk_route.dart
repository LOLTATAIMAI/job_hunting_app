import 'package:flutter/material.dart';

class Talk extends StatefulWidget {
  Talk({Key key,this.title}) : super(key: key);
  final String title;

  @override
  _Talk createState() => _Talk();
}

class _Talk extends State<Talk>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("トーク"),
      ),
      body: Center(
        child: Text("トーク画面の作成？")
      ),
    );
  }
}