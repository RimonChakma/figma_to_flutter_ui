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
      body: Padding(padding: EdgeInsets.all(10),child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide.none,
            ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide.none
              ),
              fillColor: Colors.grey.withOpacity(.2),
              filled: true,
              hintText: "search",
              prefixIcon: Icon(Icons.search)
          ),

          )
        ],
      ),),

    );
  }
}

