import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RomanceBooks extends StatefulWidget {
  final String imageUrl;
  final String text;
  final String title , subTitle;
  final String book1 , book2 ,book3, book4, book5 ;

  const RomanceBooks({super.key,
    required this.imageUrl,
    required this.text,
    required this.title,
    required this.subTitle,
    required this.book1,
    required this.book2,
    required this.book3,
    required this.book4,
    required this.book5,
     });

  @override
  State<RomanceBooks> createState()=> _RomanceBooksState();
}

class _RomanceBooksState extends State<RomanceBooks> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: InkWell(
          onTap: (){
            Get.back();
          },
            child: Icon(Icons.arrow_back_ios,color: Colors.white,)),
        backgroundColor: Color(0xFf35a79c),
        centerTitle: true,
        title: Text(widget.text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,letterSpacing: 2),),
      ),body: SingleChildScrollView(
        child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 20,),
          Center(child: Image.asset(widget.imageUrl,width: 150,height: 150,)),

          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(child: Text(widget.title,
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 30,color:  Color(0xFf35a79c),
                  letterSpacing: 2,decoration: TextDecoration.underline,decorationThickness: 2,decorationColor: Color(0xFf35a79c), ),)),
              SizedBox(height: 15,),
              Text(widget.subTitle,textAlign: TextAlign.center,style: TextStyle(fontSize: 15)
              ),
              SizedBox(height: 30,),
              Center(child: Text(widget.book1,style: TextStyle(fontSize: 18),)),
              SizedBox(height: 30,),
              Center(child: Text(widget.book2,style: TextStyle(fontSize: 18))),
              SizedBox(height: 30,),
              Center(child: Text(widget.book3,style: TextStyle(fontSize: 18))),
              SizedBox(height: 30,),
              Center(child: Text(widget.book4,style: TextStyle(fontSize: 18))),
              SizedBox(height: 30,),
              Center(child: Text(widget.book5,style: TextStyle(fontSize: 18))),
              SizedBox(height: 15,),





            ],)
        ],
    ),
      ),);
  }
}
