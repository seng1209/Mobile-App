import 'package:e_commerce/screen/page/cart_page_screen.dart';
import 'package:e_commerce/screen/page/home_page_screen.dart';
import 'package:e_commerce/screen/page/user_page_screen.dart';
import 'package:flutter/material.dart';

class Screen extends StatefulWidget {
  Screen({super.key});

  @override
  State<Screen> createState() => _ScreenState();
}

class _ScreenState extends State<Screen> {
  final screen = [
    HomePageScreen(),
    CartPageScreen(),
    UserPageScreen(),
  ];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "e-commerce",
          style: TextStyle(fontFamily: "Agbalumo", fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
        ],
      ),
      body: screen[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (index){
          setState(() {
            selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "User"),
        ],
      ),
    );
  }
}

// void selectItems(BuildContext context, int index){
//   switch(index){
//     case 0:
//       Navigator.of(context).push(MaterialPageRoute(builder: (context) => ))
//   }
// }