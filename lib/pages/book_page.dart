
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:e_books_app/pages/pdf_controller.dart';

class BookPage extends StatefulWidget {
  const BookPage({Key? key}) : super(key: key);

  @override
  State<BookPage> createState() => _BookPageState();
}

class _BookPageState extends State<BookPage> {
  PdfController pdfController = Get.put(PdfController());

  // List of book titles and their corresponding PDF files
  final List<Map<String, String>> books = [
    {'title': 'Rich and Poor Dad', 'path': 'Assets/Images/rich-dad-poor-dad.pdf'},
    {'title': 'Psychology of Money', 'path': 'Assets/Images/The-Psychology.pdf'},
    {'title': 'The Mountain Is You', 'path': 'Assets/Images/The-Mountain-is-You.pdf'},
    {'title': 'Boundaries', 'path': 'Assets/Images/boundaries.pdf'},
    {'title': 'Think And Grow Rich', 'path': 'Assets/Images/Think-And-Grow.pdf'},
    {'title': 'The Power Of Positive Thinking', 'path': 'Assets/Images/the-power-of-positive-thinking.pdf'},
    {'title': 'The Power of Discipline', 'path': 'Assets/Images/power-of-dicipline.pdf'},
    {'title': 'Deep Work', 'path': 'Assets/Images/deep-work.pdf'},
    {'title': 'The One Thing', 'path': 'Assets/Images/The-One-Thing-booksfree.org_.pdf'},
    {'title': 'Atomic Habits', 'path': 'Assets/Images/Atomic-Habits.pdf'},

    // Add more books as needed
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        leading: IconButton(onPressed: (){
          Get.back();
        },icon: Icon(Icons.arrow_back_ios,color: Colors.white,),),
        title: Text(
          'Book List',
          style: Theme.of(context)
              .textTheme
              .bodyText1
              ?.copyWith(color: Theme.of(context).colorScheme.background),
        ),
        backgroundColor: Theme.of(context).colorScheme.primary,
      ),
      body: ListView.builder(
        itemCount: books.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(books[index]['title']!),
            onTap: () {
              // Handle book selection, navigate to book details, or open the book
              _openBook(books[index]['path']!);
            },
          );
        },
      ),
    );
  }

  void _openBook(String pdfPath) {
    // You can implement the logic to open the selected book here
    // For now, let's navigate to a new screen with the selected book
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => BookDetailsPage(pdfPath: pdfPath),
      ),
    );
  }
}

class BookDetailsPage extends StatelessWidget {
  final String pdfPath;

  const BookDetailsPage({Key? key, required this.pdfPath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Details'),
      ),
      body: SfPdfViewer.asset(pdfPath),
    );
  }
}
