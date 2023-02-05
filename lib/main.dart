import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:mcalapp/pages/drliban.dart';
import 'package:mcalapp/pages/drsly.dart';
import 'package:mcalapp/pages/fit.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      ),
    );

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        toolbarHeight: 130,
        elevation: 0,
        title: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Morning kinin",
                style: TextStyle(fontSize: 15, color: Color(0xff7a7373)),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "What do you feel?",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 29),
              )
            ],
          ),
        ),
        actions: [
          Container(
            padding: EdgeInsets.only(right: 20),
            width: 90,
            child: Image.asset("lib/images/ogo.png"),
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 20,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 5,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: Container(
                      width: 270,
                      height: 60,
                      padding: EdgeInsets.all(10),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(
                            Icons.search_sharp,
                            color: Colors.black87,
                          ),
                          hintText: "  search here",
                          hintStyle: TextStyle(
                              color: Colors.grey,
                              fontWeight: FontWeight.w800,
                              fontSize: 19),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        color: Color(0xff6b5dd3),
                        borderRadius: BorderRadius.circular(20)),
                    child: Icon(
                      Icons.add_chart_outlined,
                      size: 40,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Find your Dector",
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.w800),
                  ),
                  SizedBox(
                    width: 160,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Color(0xff6b5dd3)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 200,
              padding: EdgeInsets.only(left: 15),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const DRSly();
                        })));
                      },
                      child: PrCard("lib/images/p1.png")),
                  GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: ((context) {
                          return const DRlib();
                        })));
                      },
                      child: PrCard("lib/images/p2.png")),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: ((context) {
                        return const FIT();
                      })));
                    },
                    child: PrCard(
                      "lib/images/p2.png",
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                        color: Colors.black87),
                  ),
                  SizedBox(
                    width: 220,
                  ),
                  Text(
                    "See All",
                    style: TextStyle(
                        fontWeight: FontWeight.w800, color: Color(0xff6b5dd3)),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 120,
              padding: EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    width: 100,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 35),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("lib/images/brain.png"),
                          width: 90,
                        ),
                        Text(
                          "General",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    color: Colors.white,
                    margin: EdgeInsets.only(right: 35),
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("lib/images/user.png"),
                          width: 90,
                        ),
                        Text(
                          "General",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: 100,
                    color: Colors.white,
                    child: Column(
                      children: [
                        Image(
                          image: AssetImage("lib/images/love.png"),
                          width: 90,
                        ),
                        Text(
                          "General",
                          style: TextStyle(
                              fontSize: 19, fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.grey, size: 30),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month, color: Colors.grey, size: 30),
            label: 'Time',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.notification_add_outlined,
              color: Colors.grey,
              size: 30,
            ),
            label: 'Chart',
          ),
        ],
      ),
    );
  }

  Widget PrCard(Image) {
    return AspectRatio(
      aspectRatio: 3 / 3,
      child: Container(
        height: 150,
        margin: EdgeInsets.only(right: 15),
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 5,
              blurRadius: 7,
              offset: Offset(3, 17), // changes position of shadow
            ),
          ],
          color: Colors.cyan,
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
            image: AssetImage(Image),
            fit: BoxFit.cover,
          ),
        ),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Align(
              alignment: Alignment.bottomLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 140, top: 5),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Icon(
                          Icons.star,
                          color: Color(0xfff67b29),
                          size: 25,
                        ),
                        Text(
                          "5",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 120, left: 10),
                    child: Text(
                      "Dr,lydia, 28",
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: Text(
                      "child psychology",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Colors.white60),
                    ),
                  )
                ],
              )),
        ),
      ),
    );
  }
}
