import 'package:flutter/material.dart';
import 'package:logintrial/services/userInformation.dart';
import 'package:flutter/cupertino.dart';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  //User user= new User(username: 'abc' , password: 'def');
  User user;
  @override
  Widget build(BuildContext context) {

    // getting data from prev page
    RouteSettings settings = ModalRoute.of(context).settings;
    user = settings.arguments;

    return Scaffold(
      backgroundColor: Colors.pink[50],
      appBar: AppBar(
        title: Text('Change Wallpaper'),
        backgroundColor: Colors.pink[200],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[

          // printing data

          Text('Username : ${user.username}'),
          SizedBox(height: 30,),
          Text('Password : ${user.password}'),
          SizedBox(height: 30,),

        ],
      ),
    );
  }
}
