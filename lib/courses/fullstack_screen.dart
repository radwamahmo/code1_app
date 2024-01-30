import 'package:flutter/material.dart';

class FullStackScreen extends StatelessWidget {
  static const String routeName = 'fullstack';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: Text('FullStack'),
          centerTitle: true,
        ),
        body: Column(children: [
          ElevatedButton(
              onPressed: () {
                Navigator.popUntil(
                    context, (route) => route.settings.name == 'Login');
              },
              child: Text('Go to fullstack')),
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
                        'assets/images/Screenshot_20190830-154431_RouteAppOne.jpg');
                  },
                  itemCount: 1,
                )),
          )
        ]));
  }
}
