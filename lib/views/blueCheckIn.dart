import 'package:flutter/material.dart';

class BlueCheckIn extends StatefulWidget {
  const BlueCheckIn({Key? key}) : super(key: key);

  @override
  _BlueCheckInState createState() => _BlueCheckInState();
}

class _BlueCheckInState extends State<BlueCheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SafeArea(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: 30,
              ),
              Container(
                child: Image.asset("assets/BLUE.png",fit: BoxFit.cover,),
              )
            ],
          ) ,
        ),
      ),
    );
  }
}
