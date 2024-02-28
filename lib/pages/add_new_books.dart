import 'package:flutter/material.dart';
import 'package:e_books_app/pages/category_data.dart';

import 'book_tile.dart';



class AddNewBook extends StatelessWidget {
  const AddNewBook({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body:SingleChildScrollView(
        child: Column(
          children: [
            Container(
              //height: 500,
              padding:const  EdgeInsets.symmetric(vertical: 40,horizontal: 20),
              color:Theme.of(context).colorScheme.primary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [


                      ],
                    ),

                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text('Your Books',style: Theme.of(context).textTheme.labelMedium)
                ],
              ),
            ),
            Column(
              children: bookData.map((e) => BookTile(
                  title: e.title!,
                  author: e.author!,
                  bookUrl: e.bookUrl!,
                  price: e.price!,
                  rating: e.rating!,
                  tolRatings: e.numberOfRating!
              )).toList(),
            )
          ],
        ),
      ),
    );
  }
}
