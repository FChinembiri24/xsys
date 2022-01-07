import 'package:flutter/material.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  _NewsState createState() => _NewsState();
}

Widget newsHead(String path, String headline) {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(children: [
      Center(
        child: Container(
            height: 340,
            width: 360,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: Image.asset(
              "assets/profile.jpg",
              fit: BoxFit.cover,
            )),
      ),
      Container(
        width: 360,
        height: 44,
        color: Colors.lightBlue,
        child: const Center(
          child: Text(
            "Frank works in office at noon",
            style: TextStyle(fontSize: 23, color: Colors.amberAccent),
          ),
        ),
      )
    ]),
  );
}

Widget newsArticle(
    String title, String content, int value, String source, String image) {
  String preview;
  if (content.length > 100) {
    preview = content.substring(0, 100);
  } else
    preview = content;
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)),
          color: Colors.amberAccent,
        ),
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 60,
                    width: 60,
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Wrap(children: [
                  Text(
                    title,
                    style: TextStyle(fontSize: 25),
                  ),
                ]),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                preview,
              ),
            )
          ],
        )),
  );
}

class _NewsState extends State<News> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        const Text(
          "HeadLines",
        ),
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
        ),
        Container(
          height: 388,
          child: ListView(children: [
            newsArticle(
                "Crime rate increases in harare",
                "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                12,
                "Daily mail",
                "assets/profile.jpg"),
            newsArticle(
                "Crime rate increases in harare",
                "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                12,
                "Daily mail",
                "assets/profile.jpg"),
            newsArticle(
                "Crime rate increases in harare",
                "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                12,
                "Daily mail",
                "assets/profile.jpg"),
            newsArticle(
                "Crime rate increases in harare",
                "Recent reports show that the rate of crime being committed in Harare has increased significantly",
                12,
                "Daily mail",
                "assets/profile.jpg"),
          ]),
        )
      ]),
    );
  }
}
