import 'package:flutter/material.dart';

class AndroidScreen extends StatelessWidget {
  static const String routeName = 'android';

  const AndroidScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('Android'),
          centerTitle: true,
        ),
        body: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == 'Login');
              },
              child: Text('Go to android')),
          Expanded(
              child: Container(
                  margin: EdgeInsets.all(20),
                  child: ListView.separated(
                    separatorBuilder: (context, index) {
                      return Container(
                        color: Colors.white,
                        height: 10,
                      );
                    },
                    itemBuilder: (BuildContext context, int index) {
                      return Image.asset(
                          'assets/images/Screenshot_20190830-154414_RouteAppOne.jpg');
                    },
                    itemCount: 1,
                  ))),
        ]));
  }
}
