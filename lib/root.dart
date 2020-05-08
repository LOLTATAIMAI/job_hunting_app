import 'package:flutter/material.dart';
import 'header.dart';
import 'routes/Home_route.dart';
import 'routes/Talk_route.dart';
import 'routes/Problems_route.dart';
import 'routes/News_route.dart';

class RootWidget extends StatefulWidget{
  const RootWidget({Key key}) : super(key: key);

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget>{
  int _selectedIndex = 0;
  final _bottomNavigationBarItems = <BottomNavigationBarItem>[];

  static const _footerIcons = [
    Icons.home,
    Icons.textsms,
    Icons.access_time,
    Icons.content_paste,
  ];

  static const _footerItemNames = [
    'ホーム(未実装)',
    'トーク(未実装)',
    '問題集(未実装)',
    'ニュース(未実装)',
  ];

  var _routes = [
    Home(),
    Talk(),
    Problems(),
    News(),
  ];

  @override
  void initState(){
    super.initState();
    _bottomNavigationBarItems.add(_UpdateActiveState(0));
    for ( var i = 1; i < _footerItemNames.length;i++){
      _bottomNavigationBarItems.add(_UpdateDeactiveState(i));
    }
  }

  BottomNavigationBarItem _UpdateActiveState(int index){
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black87,
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.black87,
        ),
      )
    );
  }

  BottomNavigationBarItem _UpdateDeactiveState(int index) {
    return BottomNavigationBarItem(
      icon: Icon(
        _footerIcons[index],
        color: Colors.black26,
      ),
      title: Text(
        _footerItemNames[index],
        style: TextStyle(
          color: Colors.black26,
        ),
      )
    );
  }

  void _onItemTapped(int index){
    setState((){
      _bottomNavigationBarItems[_selectedIndex] = _UpdateDeactiveState(_selectedIndex);
      _bottomNavigationBarItems[index] = _UpdateActiveState(index);
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: Header(),
      body: _routes.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: _bottomNavigationBarItems,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}