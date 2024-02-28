
import 'package:e_books_app/pages/play_book.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'book_page.dart';

class BookActionButton extends StatelessWidget {
  const BookActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      margin:EdgeInsets.only(left: 10,right: 10) ,
      height: 50,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.primary,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Image.asset('Assets/Images/bookk.png',width: 22,),
              SizedBox(width: 10,),
              InkWell(
                  onTap: (){
                    Get.to( ()=> BookPage());
                  },
                  child: Text('READ BOOK',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background,letterSpacing: 1.5),)),
            ],
          ),
          Container(
            width: 3,
            height: 25,
            color: Colors.white,
          ),
          Row(
            children: [
              Image.asset('Assets/Images/play-button.png',width: 22,),
              SizedBox(width: 10,),
              InkWell(
                  onTap: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context)=>PlayBook()));
                  },
                  child: Text('PLAY BOOK',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background,letterSpacing: 1.5),)),
            ],
          ),
        ],
      ),
    );
  }
}
