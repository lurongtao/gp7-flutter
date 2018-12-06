import 'package:flutter/material.dart';

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