

import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:xsys/backend/db.dart';
import 'package:xsys/helpers/variable.dart';
bool editing= true;

class Profile extends StatefulWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  //Todo
  DbMethods dbMethods= DbMethods();
  Variabless variabless=Variabless();
  late QuerySnapshot searchSnapshot;
  late QuerySnapshot imageUrl;
  String name='';
  String phone='';
  String address='';
  bool img=false;
  String imgURL='';



  initiateFind()async {
    await dbMethods.getProfile(Variabless.email).then((val) {
      setState(() {
        searchSnapshot = val;
        print("$searchSnapshot");
        setState(() {

        });
      });
    });

  await dbMethods.getImage(Variabless.email).then((val){
    imageUrl=val;
    print("$imageUrl");
    setState(() {

    });
  });
  }
String path="assets/profile1.png";

  setDetails() async
  {
    name=searchSnapshot.docs[0].get("name").toString();
    phone=searchSnapshot.docs[0].get("phone").toString();
    address=searchSnapshot.docs[0].get("address").toString();
    img=true;//searchSnapshot.docs[0].get("img");

    img? imgURL=imageUrl.docs[0].get("url"):'Hello';
  }

  @override
  Widget build(BuildContext context) {
  initiateFind();
  setDetails();

    return Scaffold(
      appBar: AppBar(
        title:  Text('profile'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: (){
                  setState(() {
                    editing=!editing;
                  });
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
                                  setState(() {
                                    editing=!editing;
                                  });
                                },
                                child:img? Image.network(imgURL):Image.asset(path,fit:BoxFit.cover,)),
                          ),
                        ),
      ),Container(      color:Colors.blueGrey[600],
                        width:360,
                        child: IconButton(onPressed: ()async {
                      ImagePicker img =ImagePicker();
                    XFile? images;

                    images =  await img.pickImage(source:ImageSource.gallery);
                    String? temp="";
                   temp = dbMethods.saveImage(File(images!.path),Variabless.email);
                   path=temp!;
                   setState(() {
                     path=temp!;
                   });

                        }, icon:const Icon(Icons.camera_alt) ))
                  ],
                ),
              ),
      const Padding(
          padding: EdgeInsets.all(18.0),//Todo
          child: Text(
            "User ID: \n",
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
                            editing?
                            Text(
                                name,
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
                              editing? Text(
                                Variabless.email,
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
                              editing? Text(
                                phone,
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

                SizedBox(
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
                              editing? Flexible(
                                child: Text(
                                  address,
                                  style: TextStyle(
                                      color: Colors.amberAccent,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20.0
                                  ),
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
                          "Services offered",
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
