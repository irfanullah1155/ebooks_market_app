
import 'package:flutter/material.dart';
import 'package:get/get.dart';


import 'color.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Image.asset('Assets/Icons/layout.png',height: 30,width: 30,),
        Text('E-BOOK Market',style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background),),
        CircleAvatar(
          child: InkWell(
              onTap: (){
                },
              child: Text('Hi',style: TextStyle(color: primaryColor),)),
          backgroundColor: Theme.of(context).colorScheme.background,
        )

      ],
    );
  }
}
