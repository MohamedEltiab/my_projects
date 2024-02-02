import 'package:flutter/material.dart';
import 'package:untitled/screen_4.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: screen_4(),
    );
  }
}
