import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key,this.title}) : super(key: key);

  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home>{
  int _counter = 0;

  void _incrementCounter() {
      setState(() {
      _counter++;
    });
  }
  void _decrementCounter() {
      setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("ホーム"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'マッチング情報を載せる',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            RaisedButton(
              onPressed: () {
                _decrementCounter();
              },
              child: Text("Decrement"),
            ),
            _counter == 0 ? Text("ok") : Text ("ng")
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), 
    );
  }
}