import 'package:flutter/material.dart';
import 'package:untitled/xo_button.dart';

class xo_screen extends StatefulWidget {
  xo_screen({super.key});

  @override
  State<xo_screen> createState() => _xo_screenState();
}

class _xo_screenState extends State<xo_screen> {
  int score_player1 = 0;
  int score_player2 = 0;
  final List<String> boardState = [
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
    "",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        centerTitle: true,
        title: Text(
          "XO game",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text("player (1)"),
                    Text("score: $score_player1 ")
                  ],
                ),
                Column(
                  children: [
                    Text("player (2)"),
                    Text("score :$score_player2"),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Divider(),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xo_button(
                  text: boardState[0],
                  index: 0,
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 1,
                  text: boardState[1],
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 2,
                  text: boardState[2],
                  on_player_click: on_player_digit,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xo_button(
                  index: 3,
                  text: boardState[3],
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 4,
                  text: boardState[4],
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 5,
                  text: boardState[5],
                  on_player_click: on_player_digit,
                ),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                xo_button(
                  index: 6,
                  text: boardState[6],
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 7,
                  text: boardState[7],
                  on_player_click: on_player_digit,
                ),
                xo_button(
                  index: 8,
                  text: boardState[8],
                  on_player_click: on_player_digit,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int count = 0;

  void on_player_digit(int index) {
    print(index);
    if (boardState[index].isNotEmpty) {
      return;
    }
    if (count.isEven) {
      boardState[index] = "x";
      if (Check("x")) {
        score_player1 += 2;
        clearBoard();
      }
    } else {
      boardState[index] = "o";
      if (Check("o")) {
        score_player2 += 2;
        clearBoard();
      }
    }
    count++;
    if (count == 9) {
      clearBoard();
    }
    setState(() {});
  }

  bool Check(String play_symbol) {
    for (int i = 0; i < 9; i += 3) {
      if (boardState[i] == play_symbol &&
          boardState[i + 1] == play_symbol &&
          boardState[i + 2] == play_symbol) {
        return true;
      }
    }
    for (int i = 0; i < 3; i++) {
      if (boardState[i] == play_symbol &&
          boardState[i + 3] == play_symbol &&
          boardState[i + 6] == play_symbol) {
        return true;
      }
    }
    if (boardState[0] == play_symbol &&
        boardState[4] == play_symbol &&
        boardState[8] == play_symbol) {
      return true;
    }
    if (boardState[2] == play_symbol &&
        boardState[4] == play_symbol &&
        boardState[6] == play_symbol) {
      return true;
    }
    return false;
  }

  void clearBoard() {
    for (int i = 0; i < 9; i++) {
      boardState[i] = "";
    }
    count = 0;
    setState(() {});
  }
}
