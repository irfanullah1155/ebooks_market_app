

import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:e_books_app/pages/splash_services.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashServices splashServices = SplashServices();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    splashServices.isLogin(context);
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 30,),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(top: 100),

                child:  Lottie.asset('Assets/lottie/book_files.json',height: 200,width: 200),
              ),
            ),

            Expanded(
              child: Container(

                child: Text('E - BOOK MARKET',style: TextStyle(color: Theme.of(context).colorScheme.primary,fontWeight: FontWeight.bold,fontSize: 30),),
              ),
            ),

          ],
        ),
      )
      ,
    );
  }
}
