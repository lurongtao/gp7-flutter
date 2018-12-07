import 'package:flutter/material.dart';
import '../models/cookbook.dart';


class ViewWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return GridViewBuilderWidget();
    }
}

class GridViewBuilderWidget extends StatelessWidget {
  Widget _gridItemBuilder(BuildContext context, int index) {
    return Container(
      child: Image.network(
        lists[index].img, fit: BoxFit.cover
      ),
    );
  }

  @override
    Widget build(BuildContext context) {
      return GridView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: lists.length,
        itemBuilder: _gridItemBuilder,
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 190,
          crossAxisSpacing: 8.0,
          mainAxisSpacing: 8.0
        ),
      );
    }
}

class GridViewCountWidget extends StatelessWidget {
  List<Widget> _buildTiles(int length) {
    return List.generate(length, (int index) {
      return Container(
        color: Colors.grey[300],
        alignment: Alignment.center,
        child: Text('Item $index', style: TextStyle(fontSize: 18, color: Colors.grey)),
      );
    });
  }

  @override
    Widget build(BuildContext context) {
      return GridView.count(
        crossAxisCount: 3,
        crossAxisSpacing: 16,
        mainAxisSpacing: 16,
        scrollDirection: Axis.horizontal,
        children: _buildTiles(100),
      );
    }
}

class PageViewBuilderWidget extends StatelessWidget {
  Widget _pageItemBuilder(BuildContext context, int index) {
    return Stack(
      children: <Widget>[
        SizedBox.expand(
          child: Image.network(lists[index].img, fit: BoxFit.cover),
        ),
        Positioned(
          bottom: 8.0,
          left: 8.0,
          child: Column(
            children: <Widget>[
              Text(lists[index].name, style: TextStyle(fontWeight: FontWeight.bold)),
              Text(lists[index].favorites)
            ],
          ),
        )
      ],
    );
  }

  @override
    Widget build(BuildContext context) {
      return PageView.builder(
        itemCount: lists.length,
        itemBuilder: _pageItemBuilder,
      );
    }
}

class PageViewWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return PageView(
        // pageSnapping: false,
        reverse: true,
        scrollDirection: Axis.vertical,
        onPageChanged: (currentPage) => debugPrint('Page $currentPage'),
        controller: PageController(
          initialPage: 0,
          // keepPage: false,
          // viewportFraction: 0.5
        ),
        children: <Widget>[
          Container(
            color: Colors.brown[900],
            alignment: Alignment.center,
            child: Text('ONE', style: TextStyle(fontSize: 32, color: Colors.white)),
          ),
          Container(
            color: Colors.grey[900],
            alignment: Alignment.center,
            child: Text('Two', style: TextStyle(fontSize: 32, color: Colors.white)),
          ),
          Container(
            color: Colors.pink[900],
            alignment: Alignment.center,
            child: Text('THREE', style: TextStyle(fontSize: 32, color: Colors.white)),
          )
        ]
      );
    }
}