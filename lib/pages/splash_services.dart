import 'dart:async';


import 'package:flutter/material.dart';
import 'package:e_books_app/pages/welcome_page_self.dart';

class SplashServices{


  void isLogin( BuildContext context){
    Timer(Duration(seconds: 5),
            ()=> Navigator.push(context, MaterialPageRoute(builder: (context)=>WelcomePageSelf())));
  }
}