
import 'package:flutter/material.dart';

class SignInDetails extends StatefulWidget {
  const SignInDetails({Key? key}) : super(key: key);

  @override
  _SignInDetailsState createState() => _SignInDetailsState();
}

class _SignInDetailsState extends State<SignInDetails> {
  String hint="";
  TextEditingController user =new TextEditingController();
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
              validator: (val)
              {
                return RegExp(
                    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                    .hasMatch(val!)
                    ? ""
                    : "Enter correct email";
              },
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
          ],
        ),
      ),
    );
  }
}
