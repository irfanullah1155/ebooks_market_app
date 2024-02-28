import 'package:flutter/material.dart';

class BookCard extends StatelessWidget {
  final String bookUrl;
  final String title;
  final VoidCallback onTap;
  const BookCard({super.key, required this.bookUrl, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: InkWell(
        onTap: onTap,
        child: SizedBox(width:120,
          child: Column(
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
                    child: Image.asset(bookUrl,fit: BoxFit.cover,width: 120,
                    )
                ),
              ),
              SizedBox(height: 10,),
              Text(title,textAlign: TextAlign.center,style: Theme.of(context).textTheme.bodyMedium,),
            ],
          ),
        ),
      ),
    );
  }
}
