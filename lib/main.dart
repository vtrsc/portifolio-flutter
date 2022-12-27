import 'package:flutter/material.dart';
import 'package:portfolio/home.dart';




// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print
void main() {

runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
  
  
}

class MyAppState extends State<MyApp>{
bool isDarkMode = false;

void SwtchDarkMode(){

        setState(() {
          isDarkMode = !isDarkMode;
        });
      }


@override
Widget build(BuildContext context) {
  return MaterialApp(
    home:home(),
    debugShowCheckedModeBanner: false,
    theme: ThemeData(primaryColorDark: Color(0xFF303030), brightness: isDarkMode ? Brightness.light : Brightness.dark),
  );
}}