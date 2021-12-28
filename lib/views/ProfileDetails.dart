import 'package:flutter/material.dart';
import 'package:xsys/views/profile.dart';

class GDetails extends StatelessWidget {
  const GDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Profile"),
        ),
        body: SafeArea(
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  GestureDetector(
                    onTap: (){

                    },
                    child: Column(
                      children: [

                        Padding(
                          padding: const EdgeInsets.all(0),
                          child: Center(
                            child: Container(
                              //margin: EdgeInsets.all(1.0),
                              decoration: const BoxDecoration(
                                // color: Colors.white70,
                                  shape: BoxShape.circle
                              ),
                              height: 360,
                              width: 480,
                              child: GestureDetector(
                                  onTap:(){


                                  },
                                  child: Image.asset("assets/profile.jpg",fit:BoxFit.cover,)),
                            ),
                          ),
                        ),Container(      color:Colors.blueGrey[600],
                            width:360,
                            child: IconButton(onPressed: (){}, icon:const Icon(Icons.camera_alt) ))
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.all(18.0),//Todo
                    child: Text(
                      "Guard ID: \nX-CL11223344",
                      style: TextStyle(
                          color: Colors.amberAccent,
                          fontSize: 28.0,
                          fontWeight: FontWeight.bold
                      ),
                      textAlign: TextAlign.start,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Center(
                      child: Wrap(
                        spacing:2,
                        runSpacing: 20.0,
                        children: <Widget>[
                          SizedBox(
                            width:320.0,
                            height: editing?101.0:126,
                            child: Card(

                              color: Colors.blueGrey[600],
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        const Text("Name",style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20.0)),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        editing?  const Text(
                                          "Frank Chinembiri ",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ):TextField(
                                          style: const TextStyle(color: Colors.black),
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,

                                              contentPadding:
                                              const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                                              enabledBorder: UnderlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: const BorderSide(color: Colors.white10)),
                                              hintStyle: const TextStyle(color: Colors.blueGrey),
                                              focusedBorder: const UnderlineInputBorder(

                                                  borderSide: BorderSide(color: Colors.white10))),
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

                          SizedBox(
                            width:320.0,
                            height:editing? 101.0:126,
                            child: Card(

                              color: Colors.blueGrey[600],
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        const Text(
                                            "Email",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20.0
                                            )),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        editing?const Text(
                                          "fchinembiri24@gmail.com",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ):TextField(
                                          style: const TextStyle(color: Colors.black),
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,

                                              contentPadding:
                                              const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                                              enabledBorder: UnderlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: const BorderSide(color: Colors.white10)),
                                              hintStyle: const TextStyle(color: Colors.blueGrey),
                                              focusedBorder: const UnderlineInputBorder(

                                                  borderSide: BorderSide(color: Colors.white10))),
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
                          SizedBox(
                            width:320.0,
                            height: editing?101.0:126,
                            child: Card(

                              color: Colors.blueGrey[600],
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        const Text(
                                          "Phone Number",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        editing?const Text(
                                          "+263775611052",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ):TextField(
                                          style: const TextStyle(color: Colors.black),
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,

                                              contentPadding:
                                              const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                                              enabledBorder: UnderlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: const BorderSide(color: Colors.white10)),
                                              hintStyle: const TextStyle(color: Colors.blueGrey),
                                              focusedBorder: const UnderlineInputBorder(

                                                  borderSide: BorderSide(color: Colors.white10))),
                                        ),
                                        const SizedBox(
                                          height: 5.0,
                                        ),
                                        const Text(
                                          "",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontWeight: FontWeight.w100
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                              ),
                            ),
                          ),

                       /*   SizedBox(
                            width:320.0,
                            height: 160.0,
                            child: Card(

                              color: Colors.blueGrey[600],
                              elevation: 2.0,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8.0)
                              ),
                              child:Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Column(
                                      children: <Widget>[
                                        const Text(
                                          "Address",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 10.0,
                                        ),
                                        editing?const Text(
                                          "123 street name, Karigamombe ,\n Harare",
                                          style: TextStyle(
                                              color: Colors.amberAccent,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ):TextField(
                                          style: const TextStyle(color: Colors.black),
                                          decoration: InputDecoration(
                                              fillColor: Colors.white,
                                              filled: true,

                                              contentPadding:
                                              const EdgeInsets.only(left: 8, bottom: 8, top: 8),
                                              enabledBorder: UnderlineInputBorder(
                                                  borderRadius: BorderRadius.circular(8),
                                                  borderSide: const BorderSide(color: Colors.white10)),
                                              hintStyle: const TextStyle(color: Colors.blueGrey),
                                              focusedBorder: const UnderlineInputBorder(

                                                  borderSide: BorderSide(color: Colors.white10))),
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
                          ),*/
                          SizedBox(
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
                                      children: const <Widget>[
                                        Text(
                                          "Training",
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),
                                        SizedBox(
                                          height: 10.0,
                                        ),
                                        Text(
                                          "Company security, Inventory Management",
                                          style: TextStyle(
                                              color: Colors.blueGrey,
                                              fontWeight: FontWeight.bold,
                                              fontSize: 20.0
                                          ),
                                        ),

                                        Text(
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
                    ),
                  )
                ],
              ),
            )
        )
    );
  }
}
