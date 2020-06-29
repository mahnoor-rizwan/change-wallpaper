import 'package:flutter/material.dart';
import 'package:logintrial/services/userInformation.dart';
class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  User user;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Image(
              image: AssetImage('assets/clouds.jpg',),
              color: Colors.black45,
              colorBlendMode: BlendMode.darken,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(50),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Username', style: TextStyle(color: Colors.white, fontSize: 27,fontWeight: FontWeight.w200),),
                  //SizedBox(height: 20,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 30, left: 30,),
                    child: TextField(
                      onChanged: (val){
                        setState(() {user.username = val;});
                      },
                    ),
                  ),
                  SizedBox(height: 30,),
                  Text('Password', style: TextStyle(color: Colors.white, fontSize: 27,fontWeight: FontWeight.w200),),
                  //SizedBox(height: 20,),
                  Container(
                    height: 40,
                    margin: EdgeInsets.only(right: 30, left: 30,),
                    child: TextField(
                      onChanged: (val){
                        setState(() {user.password = val;});
                      },
                    ),
                  ),
                  FlatButton.icon(
                      icon: Icon(Icons.arrow_forward, color: Colors.white,size: 30,),
                      label: Text(
                        'login',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w100,
                        ),
                      ),
                    onPressed: () async {
                        // instance of new user to send
                        User userTransfer = new User(username: user.username,password: user.password);
                        // printing on console
                        print('username :  ${user.username}');

                        // transferring user data
                        Navigator.pushNamed(
                          context,
                          '/home',
                        arguments: userTransfer,
                      );
                    },
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
