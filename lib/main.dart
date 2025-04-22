import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/homeScreen/craftybay.png",height: 150,width: 150,),
        actions: [
          Image.asset("assets/homeScreen/person.png",height: 40,width: 40,),
          SizedBox(width: 10,),
          Image.asset("assets/homeScreen/phone.png",height: 40,width: 40,),
          SizedBox(width: 10,),
          Image.asset("assets/homeScreen/notification.png",height: 40,width: 40,),
          SizedBox(width: 10,),
        ],
      ),

    );
  }
}

