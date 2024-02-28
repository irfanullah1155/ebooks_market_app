import 'package:flutter/material.dart';

class MyInputTextField extends StatelessWidget {
  const MyInputTextField({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();
    return Container(
      height: 50,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          SizedBox(width: 20,),
          Image.asset('Assets/Icons/search.png',height: 20,width: 20,),
          SizedBox(width: 10,),
          Expanded(
            child: TextFormField(
              controller: searchController,
              decoration: InputDecoration(
                  hintText: 'Search ',
                  border: OutlineInputBorder(
                      borderSide: BorderSide.none
                  )
              ),

            ),
          )
        ],

      ),
    );
  }
}
