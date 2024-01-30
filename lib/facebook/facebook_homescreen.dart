import 'package:flutter/material.dart';

class Facebookhomescreen extends StatelessWidget {
  static const String routeName = 'facebookhomescreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        backgroundColor: Colors.blue,
      ),
      body: Column(children: [
        Container(
          margin: EdgeInsets.all(2),
          child: Row(
            children: [
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/facebookStory.jpg'),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/facebookStory.jpg'),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/facebookStory.jpg'),
              ),
              SizedBox(
                width: 2,
              ),
              Container(
                width: 100.0,
                height: 100.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.white,
                ),
                child: Image.asset('assets/images/facebookStory.jpg'),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/owner-icon-png-3.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              'Owner',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Post',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20) // Adjust the radius as needed
                      ),
                  child: Image.asset(
                    'assets/images/like.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/singleLike.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/comment.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/share.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
        SizedBox(
          height: 100,
        ),
        Row(
          children: [
            Container(
              margin: EdgeInsets.all(8),
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                    image: AssetImage('assets/images/owner-icon-png-3.jpg'),
                    fit: BoxFit.cover),
              ),
            ),
            Text(
              'Owner',
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'My Post',
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: 50,
                  height: 50,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                          20) // Adjust the radius as needed
                      ),
                  child: Image.asset(
                    'assets/images/like.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(children: [
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/singleLike.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 100,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/comment.jpg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 120,
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                            20) // Adjust the radius as needed
                        ),
                    child: Image.asset(
                      'assets/images/share.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ]),
              ],
            )
          ],
        ),
      ]),
    );
  }
}
