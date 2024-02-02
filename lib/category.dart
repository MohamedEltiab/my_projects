import 'package:flutter/material.dart';

class category extends StatelessWidget {
  final String title;

  const category({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        color: Colors.deepOrange,
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 40),
        child: Text(
          title,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
