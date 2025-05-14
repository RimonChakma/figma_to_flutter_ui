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
      home: ThreeContainersScreen(),
    );
  }
}

class ThreeContainersScreen extends StatelessWidget {
  const ThreeContainersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Three Different Sized Containers")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 200,
              width: double.infinity,
              color: Colors.grey,
              child: Image.asset("assets/homeScreen/shoes.png"),
            ),
            SizedBox(height: 20),


          ],
        ),
      ),
    );
  }
}
