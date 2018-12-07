import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            // IconBadge(Icons.favorite, size: 50),
            // IconBadge(Icons.face, size: 50),
            // IconBadge(Icons.explore, size: 50)
            AspectRadioWidget()
          ],
        ),
      );
    }
}

class AspectRadioWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return AspectRatio(
        aspectRatio: 16 / 9,
        child: Container(
          color: Colors.yellow
        ),
      );
    }
}

class StackWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Stack(
        children: <Widget>[
          SizedBox(
            width: 300,
            height: 200,
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(8.0)
              ),
            ),
          ),
          // SizedBox(height: 32.0),
          // SizedBox(
          //   width: 100,
          //   height: 100,
          //   child: Container(
          //     decoration: BoxDecoration(
          //       color: Colors.yellow,
          //       shape: BoxShape.circle,
          //       gradient: RadialGradient(
          //         colors: [
          //           Colors.grey,
          //           Colors.blue
          //         ]
          //       )
          //     ),
          //   ),
          // ),
          Positioned(
            left: 30,
            top: 30,
            child: Icon(Icons.star, color: Colors.yellow, size: 50)
          ),
          Positioned(
            left: 80,
            top: 15,
            child: Icon(Icons.star, color: Colors.yellow, size: 20)
          ),
          Positioned(
            left: 90,
            top: 40,
            child: Icon(Icons.star, color: Colors.yellow, size: 20)
          ),
          Positioned(
            left: 80,
            top: 65,
            child: Icon(Icons.star, color: Colors.yellow, size: 20)
          ),
          Positioned(
            left: 60,
            top: 80,
            child: Icon(Icons.star, color: Colors.yellow, size: 20)
          ),
        ],
      );
    }
}

class IconBadge extends StatelessWidget {
  final IconData icon;
  final double size;

  IconBadge(this.icon, { this.size = 32.0 });

  @override
    Widget build(BuildContext context) {
      return Container(
        child: Icon(icon, size: size, color: Colors.red),
        width: size + 60,
        height: size + 60,
        color: Color.fromRGBO(255, 0, 0, 0.1)
      );
    }
}

class ConstrainedBoxWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return ConstrainedBox(
        constraints: BoxConstraints(
          minHeight: 100,
          maxWidth: 100,
        ),
        child: Container (
          color: Color.fromRGBO(0, 255, 0, 1.0),
          child: Row(
            children: <Widget>[
              
            ],
          ),
        )
      );
    }
}