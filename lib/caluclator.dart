import 'package:flutter/material.dart';
import 'package:untitled/caluc_button.dart';

class caluclator extends StatefulWidget {
  caluclator({super.key});

  @override
  State<caluclator> createState() => _caluclatorState();
}

class _caluclatorState extends State<caluclator> {
  String result_text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("caluclator"),
        ),
        body: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
          Expanded(child: Text(result_text)),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                caluc_button(
                  title: '7',
                  on_btn_clik: on_digit_click,
                ),
                caluc_button(title: '8', on_btn_clik: on_digit_click),
                caluc_button(title: '9', on_btn_clik: on_digit_click),
                caluc_button(title: '/', on_btn_clik: on_operator_click),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                caluc_button(title: '4', on_btn_clik: on_digit_click),
                caluc_button(title: '5', on_btn_clik: on_digit_click),
                caluc_button(title: '6', on_btn_clik: on_digit_click),
                caluc_button(title: '*', on_btn_clik: on_operator_click),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                caluc_button(title: '1', on_btn_clik: on_digit_click),
                caluc_button(title: '2', on_btn_clik: on_digit_click),
                caluc_button(title: '3', on_btn_clik: on_digit_click),
                caluc_button(title: '-', on_btn_clik: on_operator_click),
              ],
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                caluc_button(title: '.', on_btn_clik: on_digit_click),
                caluc_button(title: '0', on_btn_clik: on_digit_click),
                caluc_button(title: '=', on_btn_clik: on_digit_click),
                caluc_button(title: '+', on_btn_clik: on_operator_click),
              ],
            ),
          ),
        ]));
  }

  String saved_num = "";
  String saved_operator = "";

  void on_operator_click(String btn_text) {
    if (saved_num.isEmpty) {
      saved_num = result_text;
      saved_operator = btn_text;
      result_text = "";
      setState(() {});
    } else {
      String num = result_text;
      String result = calculat(saved_num, saved_operator, num);
      saved_num = result;
      saved_operator = btn_text;
      result_text = "";
      setState(() {});

      {}
    }
  }

  void on_digit_click(String btn_text) {
    print(btn_text);

    result_text += btn_text;

    setState(() {});
  }

  String calculat(String lhs, String operator, String rhs) {
    double n1 = double.parse(lhs);
    double n2 = double.parse(rhs);
    double res = 0;
    if (operator == "+") {
      res = n1 + n2;
    } else if (operator == "-") {
      res = n1 - n2;
    } else if (operator == "*") {
      res = n1 * n2;
    } else if (operator == "/") {
      res = n1 / n2;
    }
    return res.toString();
  }
}
