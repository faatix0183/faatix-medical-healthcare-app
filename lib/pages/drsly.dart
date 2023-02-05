import 'package:flutter/material.dart';
import 'package:mcalapp/data/dises.dart';
import 'package:mcalapp/data/name.dart';

class DRSly extends StatelessWidget {
  const DRSly({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 10,
        ),
        body: Column(
          children: [
            Container(
              child: Column(children: [
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(
                      width: 200,
                      height: 200,
                      child: CircleAvatar(
                        backgroundImage: AssetImage('lib/images/p1.png'),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Dr,lydia, 28 ",
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "child psychology",
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
              ]),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: CHILDD.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      elevation: 4,
                      child: ListTile(
                        leading: CircleAvatar(
                          backgroundColor: Color(0xffe76f51),
                          child: Icon(
                            Icons.favorite,
                            color: Colors.white,
                            size: 26,
                          ),
                        ),
                        title: Text(CHILDD[index]),
                        subtitle: Text(Names[index]),
                        trailing: Icon(
                          Icons.person,
                          size: 22,
                          color: Colors.grey,
                        ),
                      ),
                    );
                  })),
            ),
          ],
        ),
      ),
    );
  }
}
