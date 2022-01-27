import 'package:flutter/material.dart';

class VehicleRegistry extends StatefulWidget {
  const VehicleRegistry({Key? key}) : super(key: key);

  @override
  _VehicleRegistryState createState() => _VehicleRegistryState();
}
Widget vehicle(context,@required registration,DateIn,DateOut,TimeIn,TimeOut )
{
  return Container(
    width: MediaQuery.of(context).size.width,
    height: 35,
    color: Colors.amberAccent,
    child: Column(
      children: [Text(registration),
        Container(

        )

      ],
    ),
  );
}
class _VehicleRegistryState extends State<VehicleRegistry> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
