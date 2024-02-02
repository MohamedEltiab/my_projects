import 'package:flutter/material.dart';

class test extends StatelessWidget {
  const test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Row(
          children: [
            SizedBox(width: 30),
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/images/person.jpg'),
            ),
            SizedBox(width: 20),
            Text("pesrson"),
          ],
        ),
        actions: [
          Icon(Icons.video_call),
          SizedBox(width: 20),
          Icon(Icons.call),
          SizedBox(width: 20),
          Icon(Icons.more_vert),
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        children: [
          Stack(
            children: [
              Image.asset("assets/images/background.png"),
              Column(
                children: [
                  Row(children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/images/person1.jpg'),
                      ),
                    ),
                    SizedBox(width: 20),
                    Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'this is my frist massage',
                          hintStyle: TextStyle(color: Colors.white),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                          ),
                        ),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ]),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: 300,
                        child: TextField(
                          decoration: InputDecoration(
                              hintText: 'this is my second massage',
                              hintStyle: TextStyle(color: Colors.white),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(20.0),
                                  borderSide: BorderSide(color: Colors.red)),
                              fillColor: Colors.white),
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 30),
                      Container(
                        alignment: Alignment.topRight,
                        child: CircleAvatar(
                          radius: 30,
                          backgroundImage:
                              AssetImage('assets/images/person1.jpg'),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'type a massage',
                    hintStyle: TextStyle(color: Colors.black),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(color: Colors.red)),
                    fillColor: Colors.white,
                    prefixIcon: Icon(Icons.emoji_emotions_outlined),
                    suffixIcon: Icon(Icons.attach_file),
                  ),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              CircleAvatar(
                radius: 30,
                backgroundColor: Colors.blue,
                child: Icon(
                  Icons.mic,
                  color: Colors.white,
                  size: 40,
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
