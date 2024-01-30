import 'package:flutter/material.dart';
import 'package:new_app/home_screen.dart';

class Facebook extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Facebook'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed(HomeScreen.routeName);
          },
          child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
