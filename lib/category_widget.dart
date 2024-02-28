
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryWidget extends StatelessWidget {
  final String image;
  final String name;
  const CategoryWidget({super.key, required this.image, required this.name});

  @override
  Widget build(BuildContext context) {
    return   Padding(
      padding: const EdgeInsets.only(right: 10),
      child: InkWell(
        onTap:(){

        },
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12,horizontal: 20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),

          ),
          child: Row(
            children: [
              Image.asset(image,height: 20,width: 20,),
              SizedBox(width: 10,),
              Text(name,
                  style: Theme.of(context).textTheme.labelMedium),
            ],
          ),

        ),
      ),
    );
  }
}
