import 'package:flutter/material.dart';

class Whatsapp extends StatelessWidget {
  static const String routeName = 'login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.black,
        title: Row(children: [
          CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/person.jpg')),
          SizedBox(
            width: 12,
          ),
          Text('Person'),
          SizedBox(
            width: 130,
          ),
          Icon(Icons.video_call),
          Icon(Icons.call),
          Icon(Icons.menu),
        ]),
      ),
      body: Stack(
        children: [
          Image.asset('assets/images/background.jpg'),
          Row(
            children: [
              CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage('assets/images/person1.jpg')),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Colors.white, // Set border color
                    width: 2.0, // Set border width
                  ),
                  borderRadius: BorderRadius.circular(8.0), // Set border radius
                ),
                child: Center(
                  child: Text(
                    'This is My First Message',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
    ;
  }
}
