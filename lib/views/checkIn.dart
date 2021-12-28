import 'package:flutter/material.dart';

class CheckIn extends StatefulWidget {
  const CheckIn({Key? key}) : super(key: key);

  @override
  _CheckInState createState() => _CheckInState();
}

class _CheckInState extends State<CheckIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:const Text("Check In"),

      ),
          body:Center(
           child: Column(
              children: [
                Container(
                  child:Image.asset("assets/images.png",fit:BoxFit.fitHeight)
                ),
                ButtonTheme(
                  minWidth: 300.0,
                  height: 100.0,

                  //TODO

                  child: ElevatedButton(onPressed: (){},
                    style: const ButtonStyle(


                    ),
                      child: SizedBox(
                        width: 200,
                        height: 55,
                        child: Center(
                          child: const Text(
                    "Location CheckIn"
                  ),
                        ),
                      ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                ButtonTheme(
                  minWidth: 200.0,
                  height: 100.0,
                  //TODO
                  child: ElevatedButton(onPressed: (){},

                    child: SizedBox(
                      width: 200,
                      height: 55,
                      child: Center(
                        child: const Text(
                            "Member CheckIn CheckIn"
                        ),
                      ),
                    ),
                  ),
                )
              ],
            )

    ),

    );
  }
}
