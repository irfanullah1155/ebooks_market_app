
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_page_self.dart';

class WelcomePageSelf extends StatefulWidget {
  const WelcomePageSelf({super.key});

  @override
  State<WelcomePageSelf> createState() => _WelcomePageSelfState();
}

class _WelcomePageSelfState extends State<WelcomePageSelf> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal: 7),
            height: 475,
            width: 400,
            color: Theme.of(context).colorScheme.primary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('Assets/Icons/logo.png',height: 300,width: 350,),
                      Text('E - BOOK MARKET', style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Theme.of(context).colorScheme.background),),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Flexible(child: Text('Welcome to Our E-Book Market App where a world of captivating stories awaits you at your fingertips!📚✨',textAlign: TextAlign.center,
                            style: Theme.of(context).textTheme.labelLarge?.copyWith(color: Theme.of(context).colorScheme.background),)),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 15),
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text('Disclaimer',style: TextStyle(fontWeight: FontWeight.w400,fontSize: 20)),

                 Text('Thank you for choosing Our 📖💖 E Book Market App as your literary companion. Happy reading, and may each page bring you joy, inspiration,and unforgettable moments!',
                     style: Theme.of(context).textTheme.labelMedium?.copyWith(letterSpacing: .5)),
               ],
             ),
           ),
          SizedBox(height: 40,),
          Container(
            margin: EdgeInsets.only(left: 10,right: 10),
            height: 55,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Theme.of(context).colorScheme.primary
            ),
            child: Center(child: InkWell(
                onTap: (){
                  Get.to(HomePageSelf());
                },
                child: Text('CONTINUE',style: TextStyle(color: Colors.white,letterSpacing: 1.5,fontSize: 18),))),
          )


        ],
      ),

    );
  }
}
