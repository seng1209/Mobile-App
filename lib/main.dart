import 'package:e_commerce/screen/intro/intro_1_intro_screen.dart';
import 'package:e_commerce/screen/intro/intro_2_intro_screen.dart';
import 'package:e_commerce/screen/intro/intro_3_intro_screen.dart';
import 'package:e_commerce/screen/intro/intro_4_intro_screen.dart';
import 'package:e_commerce/screen/intro/intro_5_intro_screen.dart';
import 'package:e_commerce/screen/auth/login_auth_screen.dart';
import 'package:e_commerce/screen/page/cart_page_screen.dart';
import 'package:e_commerce/screen/page/home_page_screen.dart';
import 'package:e_commerce/screen/page/notification_page_screen.dart';
import 'package:e_commerce/screen/page/order_page_screen.dart';
import 'package:e_commerce/screen/page/product_detail_page_screen.dart';
import 'package:e_commerce/screen/page/user_page_screen.dart';
import 'package:e_commerce/screen/screen.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Intro1IntroScreen(),
  ));
}