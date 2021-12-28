import 'package:flutter/material.dart';
import 'package:xsys/views/home.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}
//TODO
class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    String hint = "Client or Work ID";
    String hint2 = "password";

    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: AppBar(
        title: const Text(
          "Login",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 35,
            ),
            SizedBox(
              height: 250,
              child: Image.asset('assets/Logo.png', fit: BoxFit.cover),
            ),
            SizedBox(
              height:30,
            ),
            TextField(
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
            TextField(
              style: const TextStyle(color: Colors.black),
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint2,
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
              height: 35,
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  //TODO
                 Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home()));
                },
                child: const Text("Login"),
                style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.amberAccent),
                ),
              ),
            ),
            const SizedBox(
              height: 1,
            ),
            Center(
              child: ButtonTheme(
                minWidth: 300,
                height: 100,
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text("Sign Up"),
                  style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.amberAccent),
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
