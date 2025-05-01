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

    List<Map<String, String>> imageFile = [
      {"path": "assets/homeScreen/laptop.png", "name": "Laptop"},
      {"path": "assets/homeScreen/fruits.png", "name": "Fruits"},
      {"path": "assets/homeScreen/diamond.png", "name": "Diamond"},
      {"path": "assets/homeScreen/car.png", "name": "Car"},
    ];



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
      body: Padding(padding: EdgeInsets.all(10),child: SingleChildScrollView(
        child: Column(
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
            ],),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              Container(height: 15,width: 15,decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.grey
              ),),
                SizedBox(width: 5,),
                Container(height: 15,width: 15,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1)
                ),),
                SizedBox(width: 5,),
                Container(height: 15,width: 15,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1)
                ),),
                SizedBox(width: 5,),
                Container(height: 15,width: 15,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    border: Border.all(color: Colors.grey,width: 1)
                ),),
                SizedBox(width: 5,),
                Container(height: 15,width: 15,decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                  border: Border.all(color: Colors.grey,width: 1)
                ),),
            ]),
            SizedBox(height: 10,),
            SizedBox(height: 10),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "All Categories",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
                    ),
                    Text(
                      "See All",
                      style: TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 18),
                    ),
                  ],
                ),
                SizedBox(height: 10),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: imageFile.map((file) {
                    return Column(
                      children: [
                        Container(
                          height: 80,
                          width: 80,
                          margin: EdgeInsets.symmetric(horizontal: 4),
                          decoration: BoxDecoration(
                            color: Colors.grey.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child:
                              Center(
                                child: Image.asset(
                                  file['path']!,
                                  height: 50,
                                  width: 50,
                                ),
                              ),
                        ),
                        Text(file["name"]!,style: TextStyle(color: Colors.grey.withOpacity(0.9),fontWeight: FontWeight.w700))
                      ],
                    );

                  }).toList(),

                ),

              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
              Text(
                "Popular",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
              ),
              Text(
                "See All",
                style: TextStyle(color: Colors.grey.withOpacity(0.8), fontSize: 18),
              ),
            ],),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: List.generate(3, (index) {
                  return Container(
                    width: 170,
                    margin: EdgeInsets.only(right: 10),
                    child: Card(
                      color: Colors.grey,
                      margin: EdgeInsets.zero, 
                      child: Column(
                        children: [
                          Center(
                            child: Image.asset(
                              "assets/homeScreen/shoes.png",
                              fit: BoxFit.contain, 
                              height: 100, 
                              width: 100,  
                            ),
                          ),
                          Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: Colors.white
                            ),
                            child: Column(
                              children: [
                                Text("new year special shoe 30"),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("\$100",),
                                    Row(children: [
                                      Icon(Icons.star),
                                      Text("4.8")
                                    ],),
                                    Icon(Icons.favorite)
                                  ],
                                )
                              ],
                            ),
                          )

                        ],
                      ),
                    ),
                  );
                }),
              ),
            ),



          ],

        ),
      ),),
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

