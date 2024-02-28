
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../book_card.dart';
import '../category_widget.dart';
import 'book_detail.dart';
import 'book_tile.dart';
import 'category_data.dart';
import 'home_appbar.dart';
import 'my_input_text_field.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 360,
              padding: EdgeInsets.all(10),
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        SizedBox(height: 40,),
                        HomeAppBar(),
                        SizedBox(height: 10,),
                        Row(
                          children: [
                            Text('Good Morning ✌️',
                              style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.background),),
                            SizedBox(width: 5,),
                            Text('Irfan Ullah',
                                style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background)),
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Flexible(child: Text('Time to read the books and inhance your knowledge',
                                style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background)
                            ),
                            ),

                          ],
                        ),
                        SizedBox(height: 20,),
                        MyInputTextField(),
                        SizedBox(height: 20,),


                        Row(
                          children: [
                            Text('Topics',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),)
                          ],
                        ),
                        SizedBox(height: 20,),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: categoryData.map(
                                    (e) => CategoryWidget(image: e['icon']!, name: e['label']!)).toList(),

                          ),
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Trending',style: Theme.of(context).textTheme.labelMedium),
                    ],
                  ),
                  SizedBox(height: 10,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: bookData.map((e) => BookCard(
                        title: e.title!,
                        bookUrl: e.bookUrl!,
                        onTap: (){
                          Get.to( ()=>BookDetails(book: e,));
                        },
                      )).toList(),
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Your Interest'),
                    ],
                  ),
                  SizedBox(height: 10),
                  Column(
                    children: bookData.map((e) => BookTile(
                        title: e.title!,
                        author: e.author!,
                        bookUrl: e.bookUrl!,
                        price: e.price!,
                        rating: e.rating!,
                        tolRatings: e.numberOfRating!)).toList(),
                  )],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
