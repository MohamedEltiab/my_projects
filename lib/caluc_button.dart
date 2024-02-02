import 'package:flutter/material.dart';

class caluc_button extends StatefulWidget {
  final String title;
  final Function? on_btn_clik;

  const caluc_button({super.key, required this.title, this.on_btn_clik});

  @override
  State<caluc_button> createState() => _caluc_buttonState();
}

class _caluc_buttonState extends State<caluc_button> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            widget.on_btn_clik!(widget.title);
          },
          child: Text(widget.title),
          style: ElevatedButton.styleFrom(
              backgroundColor: Colors.grey,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              )),
        ),
      ),
    );
  }
}
