import 'package:clothing_e_commerce/app_style.dart';
import 'package:clothing_e_commerce/globalconst/global_const.dart';
import 'package:clothing_e_commerce/screens/detail_screen.dart';
import 'package:clothing_e_commerce/screens/home_screen.dart';
import 'package:clothing_e_commerce/widgets/floating_action.dart';
import 'package:custom_navigation_bar/custom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clothin E-commerce',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      
      home:const HomeScreen(),
    );
  }
}
