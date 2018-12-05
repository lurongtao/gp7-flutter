import 'package:flutter/material.dart';
import 'models/cookbook.dart';

void main() {
  runApp(App());
}

// 自定义widget
class App extends StatelessWidget {
  Widget _itemListBuilter(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget> [
          Image.network(lists[index].img),
          Text(
            lists[index].name,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            '访问：' + lists[index].all_click,
            style: Theme.of(context).textTheme.subhead
          ),
          Text(
            '收藏：' + lists[index].favorites,
            style: Theme.of(context).textTheme.subhead
          )
        ],
      )
    );
  }

  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Gp7-Flutter-App'),
            elevation: 0.0,
          ),
          body: ListView.builder(
            itemCount: lists.length,
            itemBuilder: _itemListBuilter
          )
        ),
        theme: ThemeData(
          primarySwatch: Colors.yellow
        ),
      );
    }
}

// 自定义widget
class Hello extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Center(
        child: Text(
          'hello world 2',
          textDirection: TextDirection.ltr,
          style: TextStyle(
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
            color: Colors.red
          )
        ),
      );
    }
}