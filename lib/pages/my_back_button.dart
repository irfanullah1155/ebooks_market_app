import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyBackButton extends StatelessWidget {

  const MyBackButton({super.key,});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Get.back();
      },
      child: Row(
        children: [
          Icon(Icons.arrow_back_ios,color: Colors.white,),
          SizedBox(width: 10,),
          Text('Back',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),


        ],
      ),
    );
  }
}
