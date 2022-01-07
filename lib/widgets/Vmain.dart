import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget vMain() {
  return Scaffold(
    appBar: AppBar(
      title: const Text("Vehicle registry"),
    ),
    floatingActionButton: FloatingActionButton(
      onPressed: () {},
      tooltip: 'Increment',
      child: const Icon(Icons.add),
    ),
    body: Center(
        child: Padding(
      padding: const EdgeInsets.all(1),
      child: Column(
        children: [
          Container(
            color: Colors.lightBlue[900],
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8, 10, 8, 8),
              child: Column(
                children: [
                  Row(
                    children: const [
                      Text(
                        "Vehicle registry: ",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "ZJK 1234",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 13,
                  ),
                  Row(
                    children: [
                      const Text("Time entered ",
                          style: TextStyle(color: Colors.white)),
                      const Text("1259", style: TextStyle(color: Colors.white)),
                      const SizedBox(
                        width: 150,
                        height: 12,
                      ),
                      const Text("Left ",
                          style: TextStyle(color: Colors.white)),
                      const Text("1345", style: TextStyle(color: Colors.white)),
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    )),
  );
}
