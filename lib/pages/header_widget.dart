import 'package:flutter/material.dart';


import 'my_back_button.dart';

class HeaderWidget extends StatelessWidget {
  final String bookUrl;
  final String title;
  final String author;
  final String description;
  final String pages;
  final String rating;
  final String audioLen;
  final String language;

  const HeaderWidget({super.key,
    required this.bookUrl,
    required this.title,
    required this.author,
    required this.description,
    required this.pages,
    required this.rating,
    required this.audioLen,
    required this.language});


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 45,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            MyBackButton(),

            Image.asset('Assets/Icons/heart.png',height: 25,width: 25,),

          ],
        ),
        SizedBox(height: 45,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
                borderRadius:   BorderRadius.circular(10),
                child: Image.asset(bookUrl,fit: BoxFit.cover,width: 110,))
          ],
        ),
        SizedBox(height:20,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(title,
              maxLines: 1,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headlineMedium?.copyWith(color: Theme.of(context).colorScheme.background),),
          ],
        ),
        SizedBox(height:10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Author : $author",style: Theme.of(context).textTheme.labelMedium?.copyWith(color: Theme.of(context).colorScheme.background)),
          ],
        ),
        SizedBox(height:10,),
        Row(
          children: [
            Flexible(child: Text(description,
              style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),
              textAlign: TextAlign.center,)),
          ],
        ),
        const SizedBox(height:10,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text('Rating',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),
                SizedBox(height:5,),
                Text(rating,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),

              ],
            ),
            Column(
              children: [
                Text('Pages',style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),
                SizedBox(height:5,),
                Text(pages,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),

              ],
            ),
            Column(
              children: [
                Text('Language',style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),),
                SizedBox(height:5,),
                Text(language,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),

              ],
            ),
            Column(
              children: [
                Text('Audio',style: Theme.of(context).textTheme.labelSmall?.copyWith(color: Theme.of(context).colorScheme.background),),
                SizedBox(height:5,),
                Text(audioLen,style: Theme.of(context).textTheme.bodyMedium?.copyWith(color: Theme.of(context).colorScheme.background),),

              ],
            ),

          ],
        ),

      ],
    );
  }
}
