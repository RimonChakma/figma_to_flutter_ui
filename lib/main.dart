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


  List imageFile = [
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
    "assets/homeScreen/shoes.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Wish List"),
      ),

      body: Padding(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: imageFile.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return Card(
              color: Colors.grey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    imageFile[index],
                    height: 100,
                    width: 100,
                    fit: BoxFit.contain,
                  ),
                ],
              ),
            );
          },
        ),
      ),



      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: true,
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



