import 'package:flutter/material.dart';

class ActiveChats extends StatelessWidget {
  const ActiveChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 25,left: 5),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
           children: [
             for(int i = 1; i < 10; i++)
             Padding(padding: EdgeInsets.symmetric(vertical: 10,horizontal: 15),
             child: Container(
               height: 60,
               width: 60,
               decoration: BoxDecoration(
                 color: Colors.white,
                 borderRadius: BorderRadius.circular(35),
                 boxShadow: [
                   BoxShadow(
                     color: Colors.grey.withOpacity(0.2),
                     spreadRadius: 1,
                     blurRadius: 5,
                     offset: Offset(0,3),
                   ),
                 ],

               ),
               child: ClipRRect(
                 child: Image.asset("assets/images/1.image.png",
                 ),
               ),
             ),
             ),
           ],
        ),
      ),
    );
  }
}
