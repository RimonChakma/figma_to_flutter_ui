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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wish List"),
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label:"home",),
            BottomNavigationBarItem(icon: Icon(Icons.widgets_sharp),label: "categories"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "cart"),
            BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: "wish",),
          ]),
    );
  }
}



