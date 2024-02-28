import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:e_books_app/pages/romance_books.dart';
import '../book_card.dart';
import 'book_detail.dart';
import 'book_tile.dart';
import 'category_data.dart';
import 'home_appbar.dart';
import 'my_input_text_field.dart';

class HomePageSelf extends StatefulWidget {
  const HomePageSelf({super.key});

  @override
  State<HomePageSelf> createState() => _HomePageSelfState();
}

class _HomePageSelfState extends State<HomePageSelf> {
  List<String> images=[
    'Assets/Icons/heart.png',
    'Assets/Icons/travelling.png',
    'Assets/Icons/documentary.png',
    'Assets/Icons/love-books.png',
  ];
  List<String> name = [
    'Philosophy',
    'Travel',
    'Documentary',
    'Love Story',
  ];
  List<String> booksTitle=[
    'Philosophy',
    'Travel',
    'Documentary',
    'Love Story',
  ];
  List<String> booksSubtitle=[
    'List Of Famous Philosophy Books Download It Must And Read it',
    'List Of Famous Travel Books Download It Must And Read it',
    'List Of Famous Documentary Books Download It Must And Read it',
    'List Of Famous Love Story Books Download It Must And Read it',
  ];

  // Famous Books Lists

  List<String> book1 = [
    "Meditations by Marcus Aurelius.",
    "On the Road by Jack Kerouac.",
    "An Inconvenient Truth by Davis Guggenheim.",
    "Pride and Prejudice by Jane Austen,",
  ];
  List<String> book2 = [
    "Republic by Plato.",
    "A Walk in the Woods by Bill Bryson.",
    "Bowling for Columbine by Michael Moore.",
    "Romeo and Juliet by William Shakespeare.",
  ];
  List<String> book3 = [
    "Critique of Pure Reason by Immanuel Kant.",
    "Into the Wild by Jon Krakauer.",
    "Blackfish by Gabriela Cowperthwaite.",
    "Wuthering Heights by Emily Bronte.",
  ];
  List<String> book4 = [
    "Being and Time by Martin Heidegger.",
    "In Patagonia by Bruce Chatwin",
    "March of the Penguins by Luc Jacquet, ",
    "Gone with the Wind by Margaret Mitchell.",
  ];
  List<String> book5 = [
    "Thus Spoke Zarathustra by Friedrich Nietzsche.",
    "Eat, Pray, Love by Elizabeth Gilbert",
    "Citizenfour by Laura Poitras",
    "The Fault in Our Stars by John Green.",
  ];


  final TextEditingController search = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height:350,
              color: Theme.of(context).colorScheme.primary,
              child: Padding(
                padding: const EdgeInsets.only(top: 50,left: 10,right: 10),
                child: Column(
                  children: [
                    HomeAppBar(),
                    SizedBox(height: 20,),
                    Row(
                      children: [
                        Text('Good Morning ✌️',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: Theme.of(context).colorScheme.background),),
                        SizedBox(width: 5,),
                        Text('Irfan Ullah',
                            style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background)),
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
                    Container(
                      height: 50,
                      child: ListView.builder(
                          itemCount: images.length,
                          scrollDirection: Axis.horizontal,

                          itemBuilder: (context,index) {


                            return GestureDetector(
                              onTap: (){
                                Get.to(()=>RomanceBooks(imageUrl: images[index],text: name[index],title: booksTitle[index],
                                  subTitle:booksSubtitle[index],
                                  book1:  book1[index],
                                  book2:  book2[index],
                                  book3:  book3[index],
                                  book4:  book4[index],
                                  book5:  book5[index],

                                   ),);
                              },
                              child: Container(
                                margin: EdgeInsets.only(left: 15),
                                height: 45,padding:  EdgeInsets.symmetric(horizontal: 8,vertical: 5,),

                                decoration: BoxDecoration(color:Colors.white,borderRadius: BorderRadius.circular(5)),
                                child: Row(
                                    children: [
                                      Image.asset(images[index]),
                                      SizedBox(width:8),
                                      Text(name[index])

                                    ]
                                ),
                              ),
                            );
                          }
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.all(8.0),
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
                            bookUrl: e.bookUrl!,
                            title: e.title!,
                            onTap: (){
                              Get.to(BookDetails(book: e));
                            })).toList()
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Your Interest'),
                    ],
                  ),
                  Column(
                    children: bookData.map((e) => BookTile(
                        title: e.title!,
                        author: e.author!,
                        bookUrl: e.bookUrl!,
                        price: e.price!,
                        rating: e.rating!,
                        tolRatings: e.numberOfRating!)).toList(),
                  )
                ],
              ),
            )

          ],
        ),
      ),


    );
  }
}
