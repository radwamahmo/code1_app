import 'package:flutter/material.dart';

class Homescreengridwidget extends StatelessWidget {
  String imagepath;
  String name;

  Homescreengridwidget({required this.name, required this.imagepath});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.orange,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: [
          Image.asset(
            imagepath,
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.fill,
          ),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.symmetric(vertical: 4, horizontal: 8),
            color: Colors.purpleAccent.withOpacity(0.45),
            child: Text(
              name,
              style: TextStyle(color: Colors.white, fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
