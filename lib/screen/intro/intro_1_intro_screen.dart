import 'package:e_commerce/screen/auth/login_auth_screen.dart';
import 'package:e_commerce/screen/intro/intro_2_intro_screen.dart';
import 'package:e_commerce/screen/screen.dart';
import 'package:flutter/material.dart';

class Intro1IntroScreen extends StatelessWidget {
  const Intro1IntroScreen({super.key});

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
              children: [
                SizedBox(height: 24,),
                Center(
                  child: Image.asset("assets/images/intro/intro1.jpg"),
                  // child: Image(
                  //     image: NetworkImage("https://images.contentstack.io/v3/assets/bltcedd8dbd5891265b/blt5f18c2119ce26485/6668df65db90945e0caf9be6/beautiful-flowers-lotus.jpg?q=70&width=3840&auto=webp")
                  // ),
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
          // Navigator.push(context, new MaterialPageRoute(builder: (context) => Intro2IntroScreen()));
          Navigator.of(context).push(_createRoute());
        }, 
        child: Icon(Icons.arrow_forward),
      ),
    );
  }
}

Route _createRoute() {
  return PageRouteBuilder(
    pageBuilder: (context, animation, secondaryAnimation) => const Intro2IntroScreen(),
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      const begin = Offset(1.0, 0.0);
      const end = Offset.zero;
      const curve = Curves.ease;

      var tween = Tween(begin: begin, end: end).chain(CurveTween(curve: curve));

      return SlideTransition(position: animation.drive(tween), child: child);
    },
  );
}