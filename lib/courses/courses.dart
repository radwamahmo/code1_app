import 'package:flutter/material.dart';
import 'package:new_app/courses/android_screen.dart';
import 'package:new_app/courses/fullstack_screen.dart';
import 'package:new_app/courses/ios_screen.dart';

class Courses extends StatelessWidget {
  static const String routeName = 'courses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('RouteAppone'),
        ),
        body: Container(
          margin: EdgeInsets.all(6),
          child: Column(
            children: [
              Image.asset('assets/images/Android.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(AndroidScreen.routeName);
                },
                child: Text('Android Course'),
              ),
              SizedBox(
                height: 4,
              ),
              Image.asset('assets/images/IOS.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(IosScreen.routeName);
                },
                child: Text('IOS Course'),
              ),
              SizedBox(
                height: 4,
              ),
              Image.asset('assets/images/fullStack.jpeg'),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushReplacementNamed(FullStackScreen.routeName);
                },
                child: Text('fullStack Course'),
              ),
            ],
          ),
        ));
  }
}
