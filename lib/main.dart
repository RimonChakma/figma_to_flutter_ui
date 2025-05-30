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
      home: CreateReviewForm(),
    );
  }
}

class CreateReviewForm extends StatelessWidget {
  const CreateReviewForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("products details")),

      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.grey.shade500,
                width: 1
              )
            ),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: "First Name",
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),),
          ),
        ),

        SizedBox(height: 10,),

        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 40,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade500,
                    width: 1
                )
            ),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: "Last Name",
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),),
          ),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(10),
          child: Container(
            height: 150,
            decoration: BoxDecoration(
                border: Border.all(
                    color: Colors.grey.shade500,
                    width: 1
                )
            ),
            child: TextField(decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
              ),
              hintText: "Write Review",
              contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            ),),
          ),
        ),
      ],),

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
