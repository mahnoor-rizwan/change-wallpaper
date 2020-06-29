import 'package:flutter/material.dart';
import 'screens/signIn.dart';
import 'screens/home.dart';

void main() {
  runApp(MaterialApp(

    initialRoute: '/signIn',
    routes: {
      //'/' : (context) => Loading();
      '/signIn': (context) => SignIn(),
      '/home' : (context) => Home(),
    },

  ));
}