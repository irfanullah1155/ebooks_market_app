import 'dart:ffi';

import 'package:flutter/material.dart';

class BookTile extends StatelessWidget {
  final String title;
  final String author;
  final String bookUrl;
  final int price;
  final String rating;
  final int tolRatings;
  const BookTile({super.key,
    required this.title,
    required this.author,
    required this.bookUrl,
    required this.price,
    required this.rating,
    required this.tolRatings});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary.withOpacity(.1),
          ),
          margin: EdgeInsets.only(top: 10,),
          padding: EdgeInsets.only(top: 10,left: 10),

          child: Row(
            children: [
              Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                              color: Theme.of(context).colorScheme.primary.withOpacity(0.2),
                              blurRadius:8 ,
                              spreadRadius: 0,
                              offset: Offset(2,2)
                          ),
                        ]
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(7),
                        child: Image.asset(bookUrl,fit: BoxFit.cover,width: 100,
                        )
                    ),
                  ),
                  SizedBox(height: 10,),

                ],
              ),
              SizedBox(width: 10,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title,style: Theme.of(context).textTheme.bodyMedium,),
                    SizedBox(height: 5,),
                    Text(author,style: Theme.of(context).textTheme.labelMedium),
                    SizedBox(height: 5,),
                    Text(price.toString(),style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.secondary)),

                    Row(

                      children: [
                        Image.asset("Assets/Icons/star.png",width: 25,height: 25,),
                        SizedBox(width: 10,),
                        Text(rating,
                            style: Theme.of(context).textTheme.bodyMedium),
                        SizedBox(width: 15,),
                        Text("($tolRatings ratings)",style: Theme.of(context).textTheme.labelMedium),

                      ],
                    )


                  ],
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
