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
      home: cetagorieScreen(),
    );
  }
}
class cetagorieScreen extends StatefulWidget {
  const cetagorieScreen({super.key});

  @override
  State<cetagorieScreen> createState() => _cetagorieScreenState();
}

class _cetagorieScreenState extends State<cetagorieScreen> {

  List<Map<String, String>> imageFile = [
    {"path": "assets/homeScreen/laptop.png", "name": "electronic"},
    {"path": "assets/homeScreen/fruits.png", "name": "Fruits"},
    {"path": "assets/homeScreen/diamond.png", "name": "fashion"},
    {"path": "assets/homeScreen/car.png", "name": "furniture"},
    {"path": "assets/homeScreen/laptop.png", "name": "electronic"},
    {"path": "assets/homeScreen/fruits.png", "name": "Fruits"},
    {"path": "assets/homeScreen/diamond.png", "name": "fashion"},
    {"path": "assets/homeScreen/car.png", "name": "furniture"},
    {"path": "assets/homeScreen/laptop.png", "name": "electronic"},
    {"path": "assets/homeScreen/fruits.png", "name": "Fruits"},
    {"path": "assets/homeScreen/diamond.png", "name": "fashion"},
    {"path": "assets/homeScreen/car.png", "name": "furniture"},
    {"path": "assets/homeScreen/laptop.png", "name": "electronic"},
    {"path": "assets/homeScreen/fruits.png", "name": "Fruits"},
    {"path": "assets/homeScreen/diamond.png", "name": "fashion"},
    {"path": "assets/homeScreen/car.png", "name": "furniture"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("categories"),
      ),

    );
  }
}



