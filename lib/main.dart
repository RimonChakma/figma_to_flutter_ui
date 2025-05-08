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
      body: GridView.builder(
        itemCount: imageFile.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,

      ), itemBuilder: (context, index) {
          return
            Column(
            children: [
              Center(
                child: SizedBox(
                  height: 90,
                  width: 90,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                    ),
                    child: Center(
                      child: Image.asset(
                        imageFile[index]["path"]!,
                        fit: BoxFit.contain,
                        height: 50,
                        width: 50,
                      ),
                    ),
                  ),
                ),
              ),


              SizedBox(height: 6,),
              Text(imageFile[index]["name"]!)

            ],
          );
      },),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.grey,
          unselectedItemColor: Colors.grey,
          currentIndex: 0,
          items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "home"),
        BottomNavigationBarItem(icon: Icon(Icons.widgets_sharp),label: "categories"),
        BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: "gift"),
        BottomNavigationBarItem(icon: Icon(Icons.card_giftcard),label: "wish"),
      ]),
    );
  }
}



