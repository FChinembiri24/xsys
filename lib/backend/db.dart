
import 'package:cloud_firestore/cloud_firestore.dart';

class DbMethods
{
  saveUser(String userID,String name, String email, var phoneNumber,String address ,services) async
  {
    Map<String,dynamic> userMap=
    {
      'userId':userID,
      'name':name,
      'email':email,
      'phone':phoneNumber,
      'address':address,
    };
    return await FirebaseFirestore.instance.collection("profile").doc(userID).set(userMap);
  }

  saveServices(String userId,String Services) async{

    Map<String,String> services=
        {
          'userId':userId,
          'services':Services
        };
    return await FirebaseFirestore.instance.collection("Services").add(services);
  }
}