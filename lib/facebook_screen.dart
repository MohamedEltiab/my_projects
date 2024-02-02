import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class facebook extends StatelessWidget {
  const facebook({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Expanded(
              child: Text(
                "facebook",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 35, color: Colors.blueAccent),
              ),
            ),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.add,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.search,
                  color: Colors.black,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  FontAwesomeIcons.facebookMessenger,
                  color: Colors.black,
                )),
            // SizedBox(width: 300),
          ],
        ),
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.home,
                          color: Colors.blueAccent,
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.person_add,
                          color: Colors.black,
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.home_max_outlined,
                          color: Colors.black,
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.notifications,
                          color: Colors.black,
                        )),
                  ),
                  Expanded(
                    child: TextButton(
                        onPressed: () {},
                        child: Icon(
                          Icons.menu,
                          color: Colors.black,
                        )),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                height: 20,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    radius: 22,
                    backgroundImage: AssetImage('assets/images/person1.jpg'),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'what is your mind ? ',
                        hintStyle: TextStyle(color: Colors.black),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20.0),
                            borderSide: BorderSide(color: Colors.grey)),
                        fillColor: Colors.white,
                      ),
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.image,
                      color: CupertinoColors.activeGreen,
                    ),
                  )
                ],
              ),
              Divider(
                thickness: 10,
                color: Colors.grey,
                height: 50,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(15),
                      child: Stack(
                        children: [
                          Image.asset("assets/images/person2.jpg"),
                          Icon(
                            Icons.person,
                            color: Colors.blueAccent,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Divider(
                thickness: 10,
                color: Colors.grey,
                height: 10,
              ),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Owner",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
                          Text(
                            "3h",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.language_sharp,
                            size: 11,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My post",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(
                      Icons.thumb_up_alt,
                      size: 9,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      size: 9,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 450,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "100 commend",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_alt_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "like",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "comment",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.call),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "send",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.screen_share_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "share",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                height: 50,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 15,
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.black,
                    child: Icon(
                      Icons.person,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    children: [
                      Text(
                        "Owner",
                        style: TextStyle(fontSize: 15),
                      ),
                      Row(
                        children: [
                          Text(
                            "3h",
                            style: TextStyle(fontSize: 10),
                          ),
                          SizedBox(
                            width: 2,
                          ),
                          Icon(
                            Icons.language_sharp,
                            size: 11,
                          )
                        ],
                      )
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                  padding: EdgeInsets.all(15),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "My post",
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  )),
              SizedBox(
                height: 10,
              ),
              Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Text(
                    "100",
                    style: TextStyle(
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.blueAccent,
                    child: Icon(
                      Icons.thumb_up_alt,
                      size: 9,
                      color: Colors.white,
                    ),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.red,
                    child: Icon(
                      Icons.favorite,
                      size: 9,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 450,
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text(
                      "100 commend",
                      style: TextStyle(
                        fontSize: 12,
                      ),
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                height: 50,
              ),
              Row(
                children: [
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.thumb_up_alt_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "like",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.comment),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "comment",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.call),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "send",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.screen_share_outlined),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          "share",
                          style: TextStyle(color: Colors.grey),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Divider(
                thickness: 2,
                height: 50,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
