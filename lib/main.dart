import 'package:flutter/material.dart';
import 'login.dart';
import 'animated_list.dart';
import 'LoginScreen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Project 1',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),

      home: Scaffold(

        body: animated_list(),


      ),
    );
  }
}
