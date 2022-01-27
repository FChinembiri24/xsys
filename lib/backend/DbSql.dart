
import 'package:mysql1/mysql1.dart';

class DbSql
{
  final String host= "app.xsys.co.zw";
  final String username="xsysco_admin";
  final String password= "P@55w0rd";
  final String DbName="xsysco_xsyssecurity";


  Future mySqlConnect()
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
   /* Map<String, dynamic> userMap =
    {
      'userId': userID,
      'name': name,
      'email': email,
      'phone': phoneNumber,
      'address': address,
      'img': img,

    };*/
    var result = await conn.query('insert into user (Username,FullName,Address,Phone,IMG,email) values (?, ?, ?, ?, ?, ?)', [userID,name,address,phoneNumber,img, email]);
    return result;
  }

}