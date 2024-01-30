import 'package:flutter/material.dart';
import 'package:new_app/xo_game/game_board.dart';

class PlayerScreen extends StatelessWidget {
  static const String routeName = 'player_screen';
  String player1Name = '';
  String player2Name = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Welcome to our Game'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                onChanged: (text) {
                  player1Name = text;
                },
                decoration: InputDecoration(labelText: 'Player1 Name'),
              ),
              TextField(
                onChanged: (text) {
                  player2Name = text;
                },
                decoration: InputDecoration(labelText: 'Player2 Name'),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed(GameBoard.routeName,
                        arguments: GameBoardArgs(
                            player1Name: player1Name,
                            player2Name: player2Name));
                  },
                  child: Text("Let's play"))
            ],
          ),
        ));
  }
}
