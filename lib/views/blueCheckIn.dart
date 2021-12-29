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
              ),
              const SizedBox(
                height:22,
              )
              ,ButtonTheme(
                minWidth: 300.0,
                height: 100.0,

                //TODO

                child: ElevatedButton(onPressed: (){

                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>BlueCheckIn()));
                },
                  style: const ButtonStyle(


                  ),
                  child: SizedBox(
                    width: 200,
                    height: 55,
                    child: Center(
                      child: const Text(
                          "Check in"
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ) ,
        ),
      ),
    );
  }
}
