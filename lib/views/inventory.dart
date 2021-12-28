import 'package:flutter/material.dart';

class Inventory extends StatefulWidget {
  const Inventory({Key? key}) : super(key: key);

  @override
  _InventoryState createState() => _InventoryState();
}

class _InventoryState extends State<Inventory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Inventory"),
      ),
      body: Center(
        child: Column(
          children: [
            SizedBox(
              height:125,
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
                        "Inventory In"
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
                        "Inventory out"
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
                        "Inventory  report"
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
                        "Search Inventory"
                    ),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}
