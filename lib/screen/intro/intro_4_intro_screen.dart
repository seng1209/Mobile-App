import 'package:e_commerce/screen/intro/intro_5_intro_screen.dart';
import 'package:e_commerce/screen/screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_auth_screen.dart';

class Intro4IntroScreen extends StatelessWidget {
  const Intro4IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          TextButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context) => Screen()));
          }, child: Text("skip"))
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 24,),
                Center(
                  widthFactor: 4,
                  child: Text("Package tracking", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, fontFamily: "Agbalumo")),
                ),
                SizedBox(height: 24,),
                Center(
                  child: Text("In particular, Shoplon can pack your orders and help you seamlessly manage your shipments.",),
                ),
                SizedBox(height: 24,),
                Center(
                  child: Image(
                      image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwVRvRNE9dTG6YUVvp9Tild2GjQJZwu9NeJg&s")
                  ),
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.push(context, new MaterialPageRoute(builder: (context) => Intro5IntroScreen()));
          Navigator.of(context).push(_createRoute());
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Intro5IntroScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}