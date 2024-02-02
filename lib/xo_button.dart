import 'package:flutter/material.dart';

class xo_button extends StatelessWidget {
  final String text;
  final int index;
  final Function on_player_click;

  const xo_button(
      {super.key,
      required this.text,
      required this.on_player_click,
      required this.index});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.all(2.0),
      child: ElevatedButton(
        onPressed: () {
          on_player_click(index);
        },
        child: Text(text),
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.grey,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
                side: BorderSide(
                  color: Colors.blueAccent,
                ))),
      ),
    ));
  }
}
