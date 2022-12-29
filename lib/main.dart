// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todoapp/Screen/addtodo.dart';
import 'package:todoapp/Screen/homepage.dart';


void main(List<String> args) {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(brightness: Brightness.dark,
      fontFamily: "Montserrat"),
      routes: {
        'homepage' :(context) => const HomePage(),
        'add_todo' :(context) => const AddTodo()
      },
      initialRoute: 'homepage',
    );
  }
}