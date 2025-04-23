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
          ),
          SizedBox(height: 10,),

          Stack(children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset("assets/homeScreen/container.png",fit: BoxFit.cover,height: 150,width: double.infinity,)),
           Positioned.fill(child:  Container(
             child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceAround,
               children: [
                 Image.asset("assets/homeScreen/shoes.png",height: 160,width: 160,),
                 Column(children: [
                   Text("Happy new year\nSpecial Deal\nSave 30%",style: TextStyle(color: Colors.white,fontSize: 20),),
                   SizedBox(height: 10,),
                   Stack(
                     alignment: Alignment.center,
                    children: [
                       ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Image.asset(
                          "assets/homeScreen/button.png",
                          height: 40,
                          width: 150,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text("shop now",style: TextStyle(color: Colors.grey),)
                    ],
                   )

                 ],)
               ],),
           ))
          ],)
        ],
      ),),

    );
  }
}

