import "package:flutter/material.dart";
import "package:untitled/utills/Routes.dart";
import "Screens/HomePage.dart";
import "Screens/LoginPage.dart";
import 'dart:ui';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context) => HomePage(),
        MyRoutes.homepage : (context) => HomePage(),
        MyRoutes.loginpage: (context) => LoginPage()
      },
    );
  }
}