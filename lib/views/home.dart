import 'package:flutter/material.dart';
import 'package:xsys/dashboard.dart';
import 'package:xsys/helpers/HelperFunctions.dart';
import 'package:xsys/views/ProfileDetails.dart';
import 'package:xsys/views/checkIn.dart';
import 'package:xsys/views/log.dart';
import 'package:xsys/views/profile.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Schedule.dart';
import 'news.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {

  return Scaffold(
    key: scaffoldKey,

drawer: Drawer(

  child: ListView(

    padding: EdgeInsets.zero,
    children: [
      DrawerHeader(
        decoration: BoxDecoration(
            color: Colors.amberAccent,

            image: DecorationImage(image: AssetImage('assets/Logo.png',),
                fit: BoxFit.cover)
        ),
        child: Text("X-SYS"),
      ),
      GestureDetector(
        //TODO
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder:(context)=> News()));
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("News"),
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("Dashboard"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("CCTV"),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text("crime updates"),
      ),
      GestureDetector(
        onTap:(){
          //todo call rapid response
          launch("tel://+263775611052");
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("X-SYS Rapid response"),
        ),
      ),
      GestureDetector(
        onTap: () async {
          var whatsappUrl ="whatsapp://send?phone=263775611052";
          if( await canLaunch(whatsappUrl)) {
            launch(whatsappUrl);
          }
          else
          {  SnackBar(
            content: Text('Whatsapp is not detected'),

          );
          launch("smsto://263775611052");
          }
        },
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Contact us"),
        ),
      ),
      GestureDetector(
        onTap: ()=>launch("tel://911"),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Emergency call"),
        ),
      ),
      GestureDetector(
        onTap:(){
          HelperFunctions.saveUserLoggedInSharedPreference(false);
          Navigator.push(context, MaterialPageRoute(builder:(context)=> Login()))
    ;},
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text("Log out"),
        ),
      ),

    ],
  ),
),
  body: SafeArea(
  child: SingleChildScrollView(
    child: Column(

    crossAxisAlignment: CrossAxisAlignment.start,
    children: <Widget>[
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
    GestureDetector
      ( onTap: (){scaffoldKey.currentState!.openDrawer();},
        child: const Icon(Icons.menu, color: Colors.amberAccent,size: 52.0,)),
      GestureDetector(
          onTap:(){ },
          child: Image.asset("assets/Logo.png",width: 64.0,)),
    GestureDetector(
        onTap:(){ Navigator.push(context, MaterialPageRoute(builder:(context)=> Profile()));} ,
        child: Image.asset("assets/profile1.png",width: 52.0,)
    ),
    ],
    ),
    ),
    const Padding(
    padding: EdgeInsets.all(18.0),//Todo
    child: Text(
    "Welcome \nSelect an option",
    style: TextStyle(
    color: Colors.white,
    fontSize: 28.0,
    fontWeight: FontWeight.bold
    ),
    textAlign: TextAlign.start,
    ),
    ),
    Padding(
    padding: const EdgeInsets.all(12.0),
    child: Center(
    child: Wrap(
    spacing:20,
    runSpacing: 20.0,
    children: <Widget>[
    Row(
      children: [
        GestureDetector(
          onTap:(){Navigator.push(context, MaterialPageRoute(builder:(context)=> CheckIn()));},
          child: SizedBox(
          width:160.0,
          height: 160.0,
          child: Card(

            color: Colors.lightBlue[900],
          elevation: 2.0,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
          ),
          child:Center(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: <Widget>[
          Image.asset("assets/checkIn.png",width: 64.0,),
          const SizedBox(
          height: 10.0,
          ),
          const Text(
          "Check In",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0
          ),
          ),
          const SizedBox(
          height: 5.0,
          ),
          const Text(
          "",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w100
          ),
          )
          ],
          ),
          )
          ),
          ),
          ),
        ),

    GestureDetector(
      onTap:(){Navigator.push(context, MaterialPageRoute(builder: (context)=> Schedule()));} ,
      child: SizedBox(
      width:160.0,
      height: 160.0,
      child: Card(

        color: Colors.lightBlue[900],
      elevation: 2.0,
      shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0)
      ),
      child:Center(
      child: Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
      children: <Widget>[
      Image.asset("assets/schedule.png",width: 64.0,),
      const SizedBox(
      height: 10.0,
      ),
      const Text(
      "Schedule",
      style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.bold,
      fontSize: 20.0
      ),
      ),
      const SizedBox(
      height: 5.0,
      ),
      const Text(
      "",
      style: TextStyle(
      color: Colors.white,
      fontWeight: FontWeight.w100
      ),
      )
      ],
      ),
      )
      ),
      ),
      ),
    ),
    ],
    ),
    Row(
      children: [
        GestureDetector(
          onTap:(){
            Navigator.push(context, MaterialPageRoute(builder: (context)=> Logs()));
          }
          ,
          child: SizedBox(
          width:160.0,
          height: 160.0,
          child: Card(

            color: Colors.lightBlue[900],
          elevation: 2.0,
          shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8.0)
          ),
          child:Center(
          child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
          children: <Widget>[
          Image.asset("assets/logs.png",width: 64.0,),
          const SizedBox(
          height: 10.0,
          ),
          const Text(
          "Logs",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20.0
          ),
          ),
          const SizedBox(
          height: 5.0,
          ),
          const Text(
          "",
          style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w100
          ),
          )
          ],
          ),
          )
          ),
          ),
          ),
        ),

    SizedBox(
    width:160.0,
    height: 160.0,
    child: Card(

      color: Colors.lightBlue[900],
    elevation: 2.0,
    shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(8.0)
    ),
    child:Center(
    child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: Column(
    children: <Widget>[
    Image.asset("assets/notify.png",width: 64.0,),
    const SizedBox(
    height: 10.0,
    ),
    const Text(
    "Notifications",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.bold,
    fontSize: 20.0
    ),
    ),
    const SizedBox(
    height: 5.0,
    ),
    const Text(
    "",
    style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w100
    ),
    )
    ],
    ),
    )
    ),
    ),
    ),
    ],
    ),
      GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=> GDetails()));
        },
        child: SizedBox(
          width:320.0,
          height: 160.0,
          child: Card(

            color: Colors.amberAccent,
            elevation: 2.0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)
            ),
            child:Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Image.asset("assets/Details1.png",width: 64.0,),
                      const SizedBox(
                        height: 10.0,
                      ),
                      const Text(
                        "Guard Details",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                      const Text(
                        "",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w100
                        ),
                      )
                    ],
                  ),
                )
            ),
          ),
        ),
      ),
    ],
    ),
    ),
    )
    ],
    ),
  )
  )
  );
  }
  }
