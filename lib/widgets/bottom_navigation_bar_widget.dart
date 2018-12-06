import 'package:flutter/material.dart';

class BottomNavigationBarWidget extends StatefulWidget {
  @override
    State<StatefulWidget> createState() {
      return _BottomNavigationBarWidgetState();
    }
}

class _BottomNavigationBarWidgetState extends State<BottomNavigationBarWidget> {
  int _currentIndex = 0;

  void _onTapHandler (int index) {
    setState((){
      _currentIndex = index;
    });
  }

  @override
    Widget build(BuildContext context) {
      return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        fixedColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: _onTapHandler,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text('大全')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            title: Text('分类')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            title: Text('地图')
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('我的')
          )
        ],
      );
    }
}