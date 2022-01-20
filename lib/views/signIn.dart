
import 'package:flutter/material.dart';
import 'package:xsys/backend/db.dart';
import 'package:xsys/helpers/variable.dart';
import 'package:xsys/views/home.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignInDetails extends StatefulWidget {
  const SignInDetails({Key? key}) : super(key: key);

  @override
  _SignInDetailsState createState() => _SignInDetailsState();
}

class _SignInDetailsState extends State<SignInDetails> {
  String hint="username";
  String hint1="fullname";
  String hint2="phone Number";
  String hint3="address";
  String hint4="services";
  var number;
  TextEditingController user =new TextEditingController();
  TextEditingController name =new TextEditingController();
  TextEditingController phoneNumber =new TextEditingController();
  TextEditingController address =new TextEditingController();
  TextEditingController services =new TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Container(
              child: Text(
                "signIn"
              ),
            )
          ],
        ),
      ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              controller: user,

              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint,
                  contentPadding:
                  const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10)),
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: name,

              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint1,

                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10)),
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10))),
            ),
            const SizedBox(
              height: 30,
            ),
            IntlPhoneField(
            // controller: phoneNumber,
              onChanged: (phone) {
                print(phone.completeNumber);
                number=phone.completeNumber;
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
              initialCountryCode: 'ZW',
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint2,
                  contentPadding:
                  const EdgeInsets.only(left: 18, bottom: 0 ,top: 13),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10)),
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: address,

              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint3,
                  contentPadding:
                  const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10)),
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10))),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: services,

              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint4,
                  contentPadding:
                  const EdgeInsets.only(left: 14, bottom: 8, top: 8),
                  enabledBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10)),
                  hintStyle: const TextStyle(color: Colors.blueGrey),
                  focusedBorder: UnderlineInputBorder(
                      borderRadius: BorderRadius.circular(30.8),
                      borderSide: const BorderSide(color: Colors.white10))),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: GestureDetector(
                onTap: (){},
                child: Container(
                  child: ElevatedButton(
                    onPressed: ()async{
                      DbMethods dbMethods=DbMethods();

                     await dbMethods.saveUser(user.text, name.text,Variabless.email, number.text, address.text, services.text,false);
                      Navigator.pushReplacement(
                          context, MaterialPageRoute(builder: (context) => Home()));
                    },
                    child: const Text("signUp"),
                    style: ButtonStyle(
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amberAccent),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
