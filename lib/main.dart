import 'package:flutter/material.dart';
import './widgets/listview_widget.dart';
import './widgets/drawer_widget.dart';
import './widgets/bottom_navigation_bar_widget.dart';
import './widgets/basic_widget.dart';

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
              ListViewWidget(),
              BasicWidget(),
              Icon(Icons.local_airport, size: 128, color: Colors.black12),
            ],
          ),
          drawer: DrawerWidget(),
          bottomNavigationBar: BottomNavigationBarWidget()
        ),
      );
    }
}