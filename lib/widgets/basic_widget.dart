import 'package:flutter/material.dart';

class BasicWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return RichTextWidget();
    }
}

class ContainerBoxDecorationWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('http:\/\/s1.cdn.jiaonizuocai.com\/videoImg\/201510\/1313\/561c9a314c8bb.jpg\/OTAweDYwMA'),
            alignment: Alignment.topCenter,
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
              Colors.white.withOpacity(0.7),
              BlendMode.hardLight
            )
          )
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.deepOrange[100],
                  width: 3.0,
                  style: BorderStyle.solid
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Colors.black87,
                    blurRadius: 10.0,
                    spreadRadius: -10.0
                  )
                ]
              )
            ),
            Container(
              child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.deepOrange[100],
                  width: 3.0,
                  style: BorderStyle.solid
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Colors.black87,
                    blurRadius: 10.0,
                    spreadRadius: -10.0
                  )
                ]
              )
            ),
            Container(
              child: Icon(Icons.fastfood, size: 32.0, color: Colors.black),
              padding: EdgeInsets.all(16.0),
              margin: EdgeInsets.all(8.0),
              width: 90.0,
              height: 90.0,
              decoration: BoxDecoration(
                color: Colors.yellow,
                border: Border.all(
                  color: Colors.deepOrange[100],
                  width: 3.0,
                  style: BorderStyle.solid
                ),
                boxShadow: [
                  BoxShadow(
                    offset: Offset(0.0, 16.0),
                    color: Colors.black87,
                    blurRadius: 10.0,
                    spreadRadius: -10.0
                  )
                ],
                shape: BoxShape.circle,
                // gradient: RadialGradient(
                //   colors: [
                //     Colors.yellowAccent,
                //     Colors.deepOrange
                //   ]
                // )
                gradient: LinearGradient(
                  colors: [
                    Colors.deepOrange,
                    Colors.black87
                  ],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter
                )
              ),
            )
          ],
        ),
      );
    }
}

class RichTextWidget extends StatelessWidget {
  @override
    Widget build(BuildContext context) {
      return RichText(
        text: TextSpan(
          text: '好程序员',
          style: TextStyle(
            color: Colors.deepPurple,
            fontSize: 34.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w800,
          ),
          children: [
            TextSpan(
              text: 'gp7',
              style: TextStyle(
                fontSize: 17.0,
                color: Colors.grey
              )
            )
          ]
        )
      );
    }
}

class TextWidget extends StatelessWidget {
  final TextStyle _textStyle = TextStyle(
    fontSize: 16.0
  );

  final String _product = 'Flutter';
  final String _company = '谷歌';

  @override
    Widget build(BuildContext context) {
      return Text(
        '$_product是$_company的移动UI框架，可以快速在iOS和Android上构建高质量的原生用户界面。 $_product可以与现有的代码一起工作。在全世界，$_product正在被越来越多的开发者和组织使用，并且$_product是完全免费、开源的。',
        textAlign: TextAlign.left,
        style: _textStyle,
        maxLines: 3,
        overflow: TextOverflow.ellipsis,
      );
    }
}