import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {
  static const String routeName = 'login';
  String text;

  TextWidget({required this.text});

  @override
  State<TextWidget> createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
        flex: 1,
        child: Column(children: [
          Column(children: [
            TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: widget.text,
                )),
          ]),
        ]));
  }
}
