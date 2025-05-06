import 'package:e_commerce/screen/intro/intro_4_intro_screen.dart';
import 'package:e_commerce/screen/screen.dart';
import 'package:flutter/material.dart';

import '../auth/login_auth_screen.dart';

class Intro3IntroScreen extends StatelessWidget {
  const Intro3IntroScreen({super.key});

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
            // padding: const EdgeInsets.all(8.0),
            padding: EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                SizedBox(height: 24,),
                Center(
                  child: Image(
                      image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/thumb/3/39/Bachelor%27s_button%2C_Basket_flower%2C_Boutonniere_flower%2C_Cornflower_-_3.jpg/960px-Bachelor%27s_button%2C_Basket_flower%2C_Boutonniere_flower%2C_Cornflower_-_3.jpg")
                  ),
                ),
                SizedBox(height: 24,),
                Center(
                  // widthFactor: 4,
                  child: Text("Find The Items you’ve been looking for", style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24, fontFamily: "Agbalumo")),
                ),
                SizedBox(height: 24,),
                Center(
                  child: Text("Here you’ll see rich varieties of goods, carefully classified for seamless browsing experience.",),
                ),
                SizedBox(height: 24,),
              ],
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          // Navigator.push(context, new MaterialPageRoute(builder: (context) => Intro4IntroScreen()));
          Navigator.of(context).push(_createRoute());
        },
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Intro4IntroScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}