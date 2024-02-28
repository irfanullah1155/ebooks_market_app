
import 'package:flutter/material.dart';

import 'bookModel.dart';
import 'book_action_button.dart';
import 'header_widget.dart';

class BookDetails extends StatefulWidget {
  final BookModel book;
  const BookDetails({super.key, required this.book});

  @override
  State<BookDetails> createState() => _BookDetailsState();
}

class _BookDetailsState extends State<BookDetails> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(left: 15,right: 10),
              height: 480,
              color: Theme.of(context).colorScheme.primary,
              child: Row(
                children: [
                  Expanded(
                    child: HeaderWidget(
                      bookUrl: widget.book.bookUrl!,
                      title: widget.book.title!,
                      author:widget.book.author! ,
                      audioLen:widget.book.audioLen.toString() ,
                      description:widget.book.description! ,
                      rating: widget.book.rating!,
                      pages: widget.book.pages.toString(),
                      language: widget.book.language.toString(),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('About Book',style: Theme.of(context).textTheme.bodyMedium,),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [

                Flexible(child: Text(
                  widget.book.description!,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,)),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                Text('About Author',style: Theme.of(context).textTheme.bodyMedium,),

              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [

                Flexible(child: Text(
                  widget.book.aboutAuthor!,
                  style: Theme.of(context).textTheme.labelMedium,
                  textAlign: TextAlign.center,)
                ),

              ],
            ),
            SizedBox(height: 10,),
            BookActionButton(),
          ],
        ),
      ),
    );
  }
}
