import 'package:flutter/material.dart';
import 'package:new_app/xo_game/board_button.dart';

class GameBoard extends StatefulWidget {
  static const String routeName = 'game-board';

  @override
  State<GameBoard> createState() => _GameBoardState();
}

class _GameBoardState extends State<GameBoard> {
  List<String> boardState = [
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
    '',
  ];
  int Player1Score = 0;
  int Player2Score = 0;

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as GameBoardArgs;

    return Scaffold(
      appBar: AppBar(
        title: const Text('XO Game'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${args.player1Name}(X)',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$Player1Score',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${args.player2Name}(O)',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      '$Player2Score',
                      style:
                          TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                    ),
                  ],
                )
              ],
            ),
          ),
          Expanded(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              BoardButton(
                text: boardState[0],
                index: 0,
                onButtonClick: onButtonClick,
              ),
              BoardButton(
                  text: boardState[1], index: 1, onButtonClick: onButtonClick),
              BoardButton(
                  text: boardState[2], index: 2, onButtonClick: onButtonClick),
            ]),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                BoardButton(
                    text: boardState[3],
                    index: 3,
                    onButtonClick: onButtonClick),
                BoardButton(
                    text: boardState[4],
                    index: 4,
                    onButtonClick: onButtonClick),
                BoardButton(
                    text: boardState[5],
                    index: 5,
                    onButtonClick: onButtonClick),
              ],
            ),
          ),
          Expanded(
            child:
                Row(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
              BoardButton(
                  text: boardState[6], index: 6, onButtonClick: onButtonClick),
              BoardButton(
                  text: boardState[7], index: 7, onButtonClick: onButtonClick),
              BoardButton(
                  text: boardState[8], index: 8, onButtonClick: onButtonClick),
            ]),
          ),
        ],
      ),
    );
  }

  int Counter = 0;

  void onButtonClick(int index) {
    if (Counter % 2 == 0) {
      boardState[index] = 'X';
    } else {
      boardState[index] = 'O';
    }
    Counter++;
    if (checkwinner('X')) {
      Player1Score += 5;
      intiBoard();
    } else if (checkwinner('O')) {
      Player2Score += 5;
      intiBoard();
    } else if (Counter == 9) {
      intiBoard();
    }
    setState(() {});
  }

  bool checkwinner(String symbol) {
    /*  if(boardState[0]==symbol &&
    boardState[1]==symbol&&
    boardState[2]==symbol){
      return true;
    }
    if(boardState[3]==symbol &&
        boardState[4]==symbol&&
        boardState[5]==symbol){
      return true;
    }
    if(boardState[6]==symbol &&
        boardState[7]==symbol&&
        boardState[8]==symbol){
      return true;
    } */
    for (int i = 0; i < 9; i += 3) {
      if (boardState[i] == symbol &&
          boardState[i + 1] == symbol &&
          boardState[i + 2] == symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (boardState[i] == symbol &&
          boardState[i + 3] == symbol &&
          boardState[i + 6] == symbol) {
        return true;
      }
    }
    if (boardState[0] == symbol &&
        boardState[4] == symbol &&
        boardState[8] == symbol) {
      return true;
    }
    if (boardState[2] == symbol &&
        boardState[4] == symbol &&
        boardState[6] == symbol) {
      return true;
    }
    return false;
  }

  intiBoard() {
    boardState = [
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
      '',
    ];
    Counter = 0;
    setState(() {});
  }
}

class GameBoardArgs {
  String player1Name;
  String player2Name;

  GameBoardArgs({required this.player1Name, required this.player2Name});
}
