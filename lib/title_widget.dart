import 'package:flutter/material.dart';

class Titlewidget extends StatelessWidget {
  String title;

  Titlewidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 1,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 4),
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 22),
          textAlign: TextAlign.center,
        ),
        width: 200,
        color: Colors.purple,
      ),
    );
  }
}
