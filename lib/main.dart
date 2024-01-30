import 'package:flutter/material.dart';
import 'package:new_app/calculator/calculator.dart';
import 'package:new_app/contacts/contacts_screen.dart';
import 'package:new_app/counter/counter_screen.dart';
import 'package:new_app/courses/courses.dart';
import 'package:new_app/home_screen.dart';
import 'package:new_app/login_screen.dart';
import 'package:new_app/xo_game/game_board.dart';
import 'package:new_app/xo_game/player_screen.dart';

/*Widget widget = Widget()
                   Statless widget
                    Statfull widget*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: PlayerScreen.routeName,
      routes: {
        LoginScreen.routeName: (context) => LoginScreen(),
        HomeScreen.routeName: (context) => HomeScreen(),
        CounterScreen.routeName: (context) => CounterScreen(),
        Calculator.routeName: (context) => Calculator(),
        Courses.routeName: (context) => Courses(),
        ContactsScreen.routeName: (context) => ContactsScreen(),
        GameBoard.routeName: (context) => GameBoard(),
        PlayerScreen.routeName: (context) => PlayerScreen(),
      },
    );
  }
}
