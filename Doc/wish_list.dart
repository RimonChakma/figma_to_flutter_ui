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
              color: Colors.grey[300],
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      imageFile[index],
                      height: 80,
                      width: 80,
                      fit: BoxFit.contain,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Special Shoes 30%",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.bold,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                          SizedBox(height: 4),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text("\$100", style: TextStyle(fontSize: 12)),
                              Row(
                                children: [
                                  Icon(Icons.star, size: 14, color: Colors.orange),
                                  Text("4.8", style: TextStyle(fontSize: 12)),
                                ],
                              ),
                              Icon(Icons.favorite_border, size: 16),
                            ],
                          )
                        ],
                      ),
                    ),
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



