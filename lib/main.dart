import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Color(0xFF0097A7),
      ),
      body: Padding(padding: EdgeInsets.all(10),child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Image.asset("assets/logo.png",height: 150,width: 150,)),
          SizedBox(height: 10,),
          Center(child: Text("Welcome Back",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),)),
          SizedBox(height: 5,),
          Center(child: Text("please enter your email address",style: TextStyle(),)),
        ],
      ),),

    );
  }
}

