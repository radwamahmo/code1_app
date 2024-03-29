import 'package:flutter/material.dart';

class BoardButton extends StatelessWidget {
  String text;
  int index;
  Function onButtonClick;

  BoardButton(
      {required this.text, required this.index, required this.onButtonClick});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(4),
        child: ElevatedButton(
            onPressed: () {
              onButtonClick(index);
            },
            child: Text(
              text,
              style: TextStyle(fontSize: 30),
            )),
      ),
    );
  }
}
