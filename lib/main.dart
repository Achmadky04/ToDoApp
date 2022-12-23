import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/Screen/homepage.dart';


void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: "Montserrat"),
      routes: {
        'homepage' :(context) => HomePage()
      },
      initialRoute: 'homepage',
    );
  }
}