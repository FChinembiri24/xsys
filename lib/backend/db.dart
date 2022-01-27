
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:xsys/helpers/variable.dart';


class DbMethods
{
   saveUser(String userID,String name, String email, var phoneNumber,String address ,String services,bool img) async
  {
    Map<String,dynamic> userMap=
    {
      'userId':userID,
      'name':name,
      'email':email,
      'phone':phoneNumber,
      'address':address,
      'img':img,

    };

    saveServices(email, services);
    return await FirebaseFirestore.instance.collection("profile").doc(email).set(userMap);

  }

  static saveServices(String userId,String Services) async{

    Map<String,String> services=
        {
          'userId':userId,
          'services':Services
        };
    return await FirebaseFirestore.instance.collection("Services").doc(Variabless.email).set(services);
  }

  saveMac(String user) async
  {
    String Mac ='';

    Map<String,String> save=
    {
      'userId':user,
      'Mac':Mac
    };
    return await FirebaseFirestore.instance.collection("Mac").add(save);

  }

  getProfile(String email) async {
    return await FirebaseFirestore.instance
        .collection("profile")
    //  .doc("owOxaK5cz8gOfB6AGbkG")
        .where("email", isEqualTo: email)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }
  getImage(String email) async {
    return await FirebaseFirestore.instance
        .collection("Pimgs")
    //  .doc("owOxaK5cz8gOfB6AGbkG")
        .where("email", isEqualTo: email)
        .get()
        .catchError((e) {
      print(e.toString());
    });
  }
  saveImage(File file,String email) async{
    var storage=FirebaseStorage.instance;
    String imgRef ='';
    Reference ref = storage.ref().child(Variabless.email);
    UploadTask uploadTask = ref.putFile(file);
    uploadTask.then((res) async{
      imgRef= await res.ref.getDownloadURL() ;
    });
    imgRef=await ref.getDownloadURL();
    Map<String,String> save
    ={
      'email':email,
      'url':imgRef
    };
     await FirebaseFirestore.instance.collection("Pimgs").add(save);
    return imgRef;
}
getImg(String email) async{
  return await FirebaseStorage.instance.ref().child(email).getDownloadURL();
}
modify(String abc)async{
    return await FirebaseFirestore.instance.collection("pimgs").doc();
}
}