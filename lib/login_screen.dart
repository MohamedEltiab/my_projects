import 'package:flutter/material.dart';
import 'package:untitled/facebook_screen.dart';

class login_screen extends StatelessWidget {
  const login_screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(137, 68, 121, 255),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("assets/images/OIP.jpeg", width: 70),
            SizedBox(
              height: 40,
            ),
            Container(
              width: 400,
              child: TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Email or phone",
                    hintStyle: TextStyle(
                      color: Color.fromARGB(225, 225, 225, 225),
                    )),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Container(
              width: 400,
              child: TextField(
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: "password",
                    hintStyle:
                        TextStyle(color: Color.fromARGB(225, 225, 225, 225))),
              ),
            ),
            SizedBox(
              height: 35,
            ),
            Container(
              width: 400,
              height: 40,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(178, 200, 200, 200)),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => facebook()));
                  },
                  child: Text("LOG IN")),
            ),
            SizedBox(
              height: 80,
            ),
            Text(
              "Sign Up For Facebook",
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              height: 40,
            ),
            TextButton(
                onPressed: () {},
                child: Text(
                  "Forget password?",
                  style: TextStyle(color: Colors.white),
                ))
          ],
        ),
      ),
    );
  }
}
