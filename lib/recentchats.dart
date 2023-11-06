import 'package:flutter/material.dart';

import 'chats.dart';

class RecentChats extends StatelessWidget {
  const RecentChats({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 20),
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 25),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(35),
          topRight: Radius.circular(35),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            blurRadius: 5,
            spreadRadius: 1,
            offset: Offset(0,3),
          ),
        ],
      ),
      child: Column(
        children: [
          for(int i = 0; i < 10; i++)
          Padding(padding: EdgeInsets.symmetric(vertical: 15),
          child: InkWell(
            onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> Chats(), ),);
            },
            child: Container(
              height: 65,
              child: Row(
                children: [
                  ClipRRect(
                     borderRadius: BorderRadius.circular(35),
                    child: Image.asset("assets/images/1.image.png",
                    height: 65,
                      width: 65,
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Programmer",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),),
                      SizedBox(height: 10,),
                      Text("Hello, Developer, How are you?...",style: TextStyle(
                        color: Colors.black45,
                        fontWeight:  FontWeight.w600,
                        letterSpacing: 1
                      ),),
                    ],
                  ),
                  ),
                  Column(
                    children: [
                      Text("12:30",style: TextStyle(
                        fontWeight:  FontWeight.w700,
                        fontSize: 16,
                        color: Colors.black45,
                      ),),
                      SizedBox(height: 4,),
                      Container(
                        height: 23,
                        width: 23,
                        alignment: Alignment.centerRight,
                        decoration: BoxDecoration(
                          color: Color(0xFF113953),
                          borderRadius: BorderRadius.circular(25),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.3),
                              offset: Offset(0,3),
                              blurRadius:5,
                              spreadRadius: 1,
                            ),
                          ],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(right: 7),
                          child: Text("5",
                          style: TextStyle(
                            color:  Colors.white,
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          ),
        ],
      ),

    );
  }
}
