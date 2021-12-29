import 'package:flutter/material.dart';

import 'profile.dart';

class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Schedule"),
        ),
        body: SafeArea(

          child: ListView(
          children: [
            Container(
                height: 30,
                color: Colors.lightBlue[900],
                child:Center(
                    child: Text("7 Day preview"
                    ,style:
                      TextStyle(
                        color: Colors.amberAccent
                      ),)
                )
            ),
            Text("hello"),
            Text("hello"),
          ],),
          ),

        );

  }
}
