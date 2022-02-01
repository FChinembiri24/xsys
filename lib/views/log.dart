import 'package:flutter/material.dart';
import 'package:xsys/backend/db.dart';
import 'package:xsys/helpers/variable.dart';
import 'package:xsys/views/details.dart';
import 'package:xsys/views/vehicleRegistry.dart';
import 'package:xsys/widgets/Vmain.dart';

import 'inventory.dart';

class Logs extends StatefulWidget {
  const Logs({Key? key}) : super(key: key);

  @override
  _LogsState createState() => _LogsState();
}

class _LogsState extends State<Logs> {
  //Todo
int page=2;
 changePage(int num)
 {
   page=num;
   setState(() {
     page=num;
   });
 }
@override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(title:const Text("Logs")),
  body:   (page==2)?
     MeetingRoom(Variabless.email):(page==1)?const VehicleRegistry():const Inventory(),
  drawer: Drawer(
  // Add a ListView to the drawer. This ensures the user can scroll
  // through the options in the drawer if there isn't enough vertical
  // space to fit everything.
  child: ListView(
  // Important: Remove any padding from the ListView.
  padding: EdgeInsets.zero,
  children: [
  const DrawerHeader(
  decoration: BoxDecoration(
  color: Colors.amberAccent,
    image: DecorationImage(image: AssetImage('assets/Logo.png',),
        fit: BoxFit.cover)
  ),
  child: Text("X-SYS"),
  ),
  ListTile(
  title: const Text('Inventory'),
  onTap: () {
  // Update the state of the app
  // ...
  // Then close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context)=> const Inventory()));
  },
  ),
  ListTile(
  title: const Text('Vehicles'),
  onTap: () {
  // Update the state of the app
  // ...
  // Then close the drawer
    Navigator.push(context, MaterialPageRoute(builder: (context)=> vMain(context)));
  },

  ),
    ListTile(
      title: const Text('Observations'),
      onTap: () {


        // Then close the drawer
        Navigator.push(context, MaterialPageRoute(builder: (context)=>  MeetingRoom(Variabless.email)));
      },

    ),
  ],
  ),
  ),
  );
  }
chatroomStart(String username) {
  List<String> users = [username, Variabless.email];
  String chatRoomId = Variabless.email;
  Map<String, dynamic> chatroomMap = {
    "users": users,
    "chatRoomId": chatRoomId,
  };
  DbMethods dbMeths=new DbMethods();
  dbMeths.createChatroom(chatRoomId, chatroomMap);
  Navigator.pushReplacement(context,
      MaterialPageRoute(builder: (context) => MeetingRoom(chatRoomId)));
}
  }

