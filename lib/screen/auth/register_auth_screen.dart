import 'package:e_commerce/screen/auth/login_auth_screen.dart';
import 'package:flutter/material.dart';

import '../page/home_page_screen.dart';

class RegisterAuthScreen extends StatelessWidget {
  const RegisterAuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              width: double.infinity,
              child: ClipRRect(
                child: Image(
                  image: NetworkImage("data:image/jpeg;base64,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"),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(
              height: 24,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Let's get started!", style: TextStyle(fontSize: 22),),
                  SizedBox(
                    height: 24,
                  ),
                  Text("Please enter your valid data in order to create an account."),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Email address',
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  TextField(
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => HomePageScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text('Continue', style: TextStyle(color: Colors.white70),),
                    ),
                  ),
                  SizedBox(
                    height: 24,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Do you have an account?"),
                      TextButton(
                          onPressed: (){
                            Navigator.push(context, new MaterialPageRoute(builder: (context) => LoginAuthScreen()));
                          },
                          child: Text("Login", style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: Colors.purple,
                          ),)
                      )
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
