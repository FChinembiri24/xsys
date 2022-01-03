import 'package:flutter/material.dart';


class Schedule extends StatefulWidget {
  const Schedule({Key? key}) : super(key: key);

  @override
  _ScheduleState createState() => _ScheduleState();
}

class _ScheduleState extends State<Schedule> {
  @override
  Widget scheduleItem(@required String Name,String Surname,String prem,@required String contacts,)
  {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0,1,0,1),
      child: Container(

          decoration: BoxDecoration(

            color: Colors.amberAccent,
            border: Border.all( color: Colors.lightBlue,
                width: 1),
          ),
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 5, 15, 5),


          child:
            Column(
              children: [
                Row(children:[
                  Text("Date "), Text("13 Feb 2022"),
                  Align(
                    alignment: Alignment.centerRight,
                    child:Container(
                      child:Text("                      start:1800 End:0600") ,
                    ),
                  )
                ],),
                Row(children: [Text("Name:"),SizedBox(width: 2,) ,Text("Frank Majawala")]),

                Align(
                  alignment: Alignment.centerLeft,

                    child: Text("Premises")),


                Align(
                    alignment: Alignment.centerLeft,
                    child: Text("1252 Chirikadzi Street, St Mary's, Chitungwiza"))

              ],

          ),
        ),
      ),
    );
  }

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


          scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
            scheduleItem("Frank","Chinembiri","1252 Chrikadzi Street St Marys","0775611052"),
          ],),
          ),

        );

  }
}

