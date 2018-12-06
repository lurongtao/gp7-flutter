import 'package:flutter/material.dart';
import './widgets/listview_widget.dart';

void main() {
  runApp(App());
}

// 自定义widget
class App extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
        theme: ThemeData(
          primarySwatch: Colors.yellow,
          highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
          splashColor: Colors.white70
        )
      );
    }
}

class Home extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: Icon(Icons.menu),
              tooltip: 'menu',
              onPressed: () => debugPrint('menu is pressed.'),
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.search),
                tooltip: 'search',
                onPressed: () => debugPrint('search button is pressed.'),
              ),
            ],
            title: Text('Gp7-Flutter-App'),
            elevation: 0.0,
            bottom: TabBar(
              unselectedLabelColor: Colors.black38,
              indicatorColor: Colors.black54,
              indicatorSize: TabBarIndicatorSize.label,
              tabs: <Widget>[
                Tab(icon: Icon(Icons.local_cafe)),
                Tab(icon: Icon(Icons.local_bar)),
                Tab(icon: Icon(Icons.local_airport))
              ],
            ),
          ),
          body: TabBarView (
            children: <Widget>[
              Icon(Icons.local_cafe, size: 128, color: Colors.black12),
              Icon(Icons.local_bar, size: 128, color: Colors.black12),
              Icon(Icons.local_airport, size: 128, color: Colors.black12),
            ],
          ),
          drawer: Container(
            color: Colors.white,
            padding: EdgeInsets.all(8.0),
            // child: Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: <Widget>[
            //     Text('This is a Drawer.')
            //   ],
            // ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: <Widget>[
                DrawerHeader(
                  child: Text('HEADER'),
                  decoration: BoxDecoration(
                    color: Colors.grey[100]
                  ),
                ),
                ListTile(
                  title: Text('message', textAlign: TextAlign.right),
                  trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
                ),
                ListTile(
                  title: Text('favorites', textAlign: TextAlign.right),
                  trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
                ),
                ListTile(
                  title: Text('settings', textAlign: TextAlign.right),
                  trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
                )
              ],
            )
          ),
        ),
      );
    }
}