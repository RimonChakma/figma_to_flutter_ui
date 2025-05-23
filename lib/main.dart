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
      appBar: AppBar(title: Text("products details")),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 165,
              width: double.infinity,
              color: Colors.grey,
              child: Column(
                children: [
                  Center(
                    child: Image.asset("assets/homeScreen/shoes.png",fit: BoxFit.contain,height: 150,width: 150,),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                    Container(
                      height: 10,
                      width: 10,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle
                      ),
                    ),
                      SizedBox(width: 5,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle
                        ),
                      ),
                  ],),

                ],
              ),
            ),
            SizedBox(width: 10,),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text("Special Deal save 30%",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),),
                    Row(children: [
                      IconButton(onPressed: (){}, icon: Icon(Icons.remove),style: IconButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white
                      ),),
                      SizedBox(width: 3,),
                      Text("01",style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500)),
                      SizedBox(width: 3,),
                      IconButton(onPressed: (){}, icon: Icon(Icons.add),style: IconButton.styleFrom(
                        backgroundColor: Colors.grey,
                        foregroundColor: Colors.white
                      ),),
                    ],)
                  ],),
                  Row(

                    children: [
                    IconButton(onPressed: (){}, icon: Icon(Icons.star,color: Colors.yellow,)),
                    Text("4.8"),
                    Text("reviews"),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.yellow,))
                  ],),
                  Text("Color"),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.black,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                        ),
                        child: Icon(Icons.check,color: Colors.white,),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.grey,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle
                        ),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.brown,
                            shape: BoxShape.circle
                        ),
                      ),
                    ],),
                  SizedBox(height: 10,),
                  Text("Size"),
                  SizedBox(height: 10,),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                          border: Border.all(color: Colors.black,width: 1)
                        ),
                        child: Center(child: Text("x"),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            color: Colors.green,
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text("XL",style: TextStyle(color: Colors.white),),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text("2L"),),
                      ),
                      SizedBox(width: 5,),
                      Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black,width: 1),
                            shape: BoxShape.circle
                        ),
                        child: Center(child: Text("x"),),
                      ),
                    ],),
                  SizedBox(height: 10,),
                  Text("Description"),
                  SizedBox(height: 10,),
                  Text("Reference site about Lorem ipsum giving information on its origin as well as a random Lipsum genarator reference site about larem ipsum"),
                  SizedBox(height: 5,),

                  Card(
                    color: Colors.grey,
                    elevation: 1,
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10))),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        Column(
                          children: [
                          Text("Price"),
                          Text("1000\$",style: TextStyle(color: Colors.white.withOpacity(0.7)),)
                        ],),
                        ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            foregroundColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                          ),
                          child: Text("Buy Now"),
                        )
                      ],),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
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
