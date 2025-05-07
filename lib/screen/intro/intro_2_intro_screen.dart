import 'package:e_commerce/screen/intro/intro_3_intro_screen.dart';
import 'package:e_commerce/screen/screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_auth_screen.dart';

class Intro2IntroScreen extends StatelessWidget {
  const Intro2IntroScreen({super.key});

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
                  child: Text("Get those shopping bags filled", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, fontFamily: "Agbalumo")),
                ),
                SizedBox(height: 24,),
                Center(
                  child: Text("Add any item you want to your cart, or save it on your wishlist, so you don’t miss it in your future purchases.",),
                ),
                SizedBox(height: 24,),
                Center(
                  // child: Image(
                  //     image: NetworkImage("https://westmountflorist.com/cdn/shop/articles/wf-flower-reference-guide-anemone.jpg?v=1725909662&width=2048")
                  // ),
                  child: Image.asset("assets/images/intro/intro2.jpg"),
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.push(context, new MaterialPageRoute(builder: (context) => Intro3IntroScreen()));
          Navigator.of(context).push(_createRoute());
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Intro3IntroScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}