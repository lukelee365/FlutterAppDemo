import "package:flutter/material.dart";

class Alarm extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      child: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            new Text("Alarm Tab"),
          ],
        ),
      ),
    );
  }
}