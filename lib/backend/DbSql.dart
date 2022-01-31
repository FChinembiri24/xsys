
import 'dart:convert';

import 'package:mysql1/mysql1.dart';
import 'package:http/http.dart' as http;

class DbSql
{
  final String host= "104.248.165.163";
  final String username="xsysco_admin";
  final String password= "P@55w0rd";
  final String DbName="xsysco_xsyssecurity";


  Future<MySqlConnection> mySqlConnect()
  async {
    var settings =  ConnectionSettings(
        host: host,
        port: 3306,
        user: username,
        password: password,
        db: DbName
    );
    var conn = await MySqlConnection.connect(settings);
    return conn;
  }

  saveUser(String userID,String name, String email, var phoneNumber,String address ,String services,bool img) async
  { MySqlConnection conn =await mySqlConnect() ;
    Map<String,dynamic> userMap =
    {
      'userId': userID,
      'name': name,
      'email': email,
      'phone': phoneNumber,
      'address': address,
      'img': img,

    };
    var res=  await http.post(Uri.parse('app.xsys.co.zw/AppData/insert.php'),body: jsonEncode(userMap),headers: setHeaders(), );
    var result = await conn.query('insert into user (Username,FullName,Address,Phone,IMG,email) values (?, ?, ?, ?, ?, ?)', [userID,name,address,phoneNumber,img, email]);
    return result;


  }

  setHeaders()=>{'Content-type':'application/json',
  'Accept':'application/json',
  };

}