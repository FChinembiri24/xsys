

import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}
Widget newsHead(String path, String headline)
{
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
        children:[
          Center(
            child: Container(
              color: Colors.amberAccent,
                height:340,
                width: 360,
                child: Image.asset("assets/profile.jpg",fit:BoxFit.cover,)
            ),
          ),
          Container(
            width: 360,
            height:44 ,
            color: Colors.lightBlue,
            child: Center(
              child: const Text("Frank works in office at noon",
              style: TextStyle(fontSize: 23,color: Colors.amberAccent)
                ,),
            ),
          )

        ]
    ),
  );
}
class _NewsState extends State<News> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children:[
          Container(
            height: 400,
            child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              newsHead("path", "headline"),
              newsHead("path", "headline"),
              newsHead("path", "headline"),
              newsHead("path", "headline")


            ],
        ),
          )
  ]
      ),
    );
  }
}
