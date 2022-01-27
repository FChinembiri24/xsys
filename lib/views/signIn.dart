
import 'package:flutter/material.dart';
import 'package:xsys/backend/DbSql.dart';
import 'package:xsys/backend/db.dart';
import 'package:xsys/helpers/variable.dart';
import 'package:xsys/views/home.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
String hint="username";
String hint1="fullname";
String hint2="phone Number";
String hint3="address";
String hint4="services";
var selectedValue;
var number;
bool isLoading =false;
class SignInDetails extends StatefulWidget {
  const SignInDetails({Key? key}) : super(key: key);

  @override
  _SignInDetailsState createState() => _SignInDetailsState();
}

class _SignInDetailsState extends State<SignInDetails> {
  TextEditingController user =new TextEditingController();
  TextEditingController name =new TextEditingController();
  TextEditingController phoneNumber =new TextEditingController();
  TextEditingController address =new TextEditingController();
  TextEditingController services =new TextEditingController();

  final formKey = GlobalKey<FormState>();
  @override
  load(){
    isLoading;
    setState(() {
      isLoading =true;
    });
  }

  Widget build(BuildContext context) {


    if (isLoading) {
      return Scaffold(
        body: Container(
          child: Center(
            child: (CircularProgressIndicator(
              color: Colors.yellow,
            )),
          ),
        ),
      );
    }
    else
    return  Scaffold(
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
        child: Form(
          key:formKey ,
          child: Column(
            children: [
              SizedBox(height: 12,),
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
             //     number=phone.completeNumber;
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
              Text("Services",
              style:
              TextStyle(
                color: Colors.white,
                fontSize: 25
              )),
              DecoratedBox(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: DropdownButton(

                    value: selectedValue,
                    items: [
                      DropdownMenuItem(
                        child: Text("Property Security"),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text("BodyGuard Services"),
                        value: 2,
                      ),
                      DropdownMenuItem(
                        child: Text("Stock investigations"),
                        value: 3,
                      ),
                      DropdownMenuItem(
                        child: Text("Inventory management"),
                        value: 4,
                      ),
                      DropdownMenuItem(
                        child: Text("CCTV installation and maintenance"),
                        value: 5,
                      ),
                      DropdownMenuItem(
                        child: Text("X-SYS Rapid Response"),
                        value: 6,
                      )
                    ],
                    onChanged: (value) {
                      setState(() {
                        selectedValue = value;
                      });
                    }),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Container(
                  child: ElevatedButton(
                    onPressed: ()async{
                      setState(() {
                        isLoading=true;
                      });
                      DbMethods dbMethods=DbMethods();
                    await dbMethods.saveUser(user.text, name.text,Variabless.email, number.text, address.text, services.text,false).then(
                          (){
                            Navigator.pushReplacement(
                                context, MaterialPageRoute(builder: (context) => Home()));
                          }
                      );
                          (){
                        Navigator.pushReplacement(
                            context, MaterialPageRoute(builder: (context) => Home()));
                      };

                    },
                    child: const Text("signUp"),
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
      ),
    );
  }
}
