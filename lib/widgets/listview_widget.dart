import 'package:flutter/material.dart';
import '../models/cookbook.dart';

class ListViewWidget extends StatelessWidget {
  Widget _itemListBuilter(BuildContext context, int index) {
    return Container(
      color: Colors.white,
      margin: EdgeInsets.all(8.0),
      child: Column(
        children: <Widget> [
          Image.network(lists[index].img),
          SizedBox(height: 10.0),
          Text(
            lists[index].name,
            style: Theme.of(context).textTheme.title
          ),
          Text(
            '访问：' + lists[index].all_click + ' 收藏：' + lists[index].favorites,
            style: Theme.of(context).textTheme.subhead
          ),
          SizedBox(height: 10.0),
        ],
      )
    );
  }

  @override
    Widget build(BuildContext context) {
      return ListView.builder(
        itemCount: lists.length,
        itemBuilder: _itemListBuilter
      );
    }
}