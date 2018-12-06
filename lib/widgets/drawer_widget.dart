import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              accountName: Text('Felixlu', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white70)),
              accountEmail: Text('lurongtao@1000phone.com', style: TextStyle(color: Colors.white70)),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('http://www.mobiletrain.org/images/qf-2018-h5/c11-teach-22.jpg'),
              ),
              decoration: BoxDecoration(
                color: Colors.yellow[400],
                image: DecorationImage(
                  image: NetworkImage('http://d.hiphotos.baidu.com/image/h%3D300/sign=e6cb69522534349b6b066885f9eb1521/91ef76c6a7efce1b5ef04082a251f3deb58f659b.jpg'),
                  fit: BoxFit.cover,
                  colorFilter: ColorFilter.mode(
                    Colors.grey[800].withOpacity(0.8),
                    BlendMode.hardLight
                  )
                )
              ),
            ),
            
            ListTile(
              title: Text('message', textAlign: TextAlign.right),
              trailing: Icon(Icons.message, size: 22.0, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('favorites', textAlign: TextAlign.right),
              trailing: Icon(Icons.favorite, size: 22.0, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              title: Text('settings', textAlign: TextAlign.right),
              trailing: Icon(Icons.settings, size: 22.0, color: Colors.black12),
              onTap: () => Navigator.pop(context),
            )
          ],
        )
      );
    }
}