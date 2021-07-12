import 'package:flutter/material.dart';
import 'package:sliver/Login/login.dart';
import 'package:sliver/Register/app_bar.dart';
import 'package:sliver/Register/body.dart';
import 'package:sliver/Register/register.dart';

import 'Home/home.dart';

const Color myColor1 = Color(0xffa078b7);
const Color myColor2 = Color(0xff6a4288);
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home:
            Register()
            // Login()

        // Home()
        );
  }
}
