import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_books_app/pages/splash_screen.dart';
import 'package:e_books_app/pages/theme.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'E BOOK',
      theme: lightTheme,
      home: SplashScreen(),
    );
  }
}


