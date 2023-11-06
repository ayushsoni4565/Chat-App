import 'package:chat_app_ui/recentchats.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'activechats.dart';
void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment:  CrossAxisAlignment.start,
            mainAxisAlignment:  MainAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.only(left: 10,right: 10),
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      blurRadius: 5,
                      spreadRadius: 1,
                      color: Colors.black45.withOpacity(0.3),
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Icon(CupertinoIcons.line_horizontal_3,
                      size: 35,
                      color: Colors.black,
                    ),
                    Icon(CupertinoIcons.bell_fill,
                    size: 30,
                      color: Colors.black,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 15,),
              Padding(padding:  EdgeInsets.only(left: 15),
              child: Text("Messages",
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: 25,
              ),
              ),
              ),
              SizedBox(height: 15,),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 20),
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [
                    BoxShadow(
                       color: Colors.grey.withOpacity(0.3),
                      blurRadius: 10,
                      spreadRadius: 2,
                    ),
                  ],
                ),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black45,
                      fontSize: 18,
                      fontWeight: FontWeight.w700,
                    ),
                    suffixIcon: Icon(CupertinoIcons.search,
                    size: 30,
                      color: Colors.black45,
                    ),
                  ),

                ),

              ),
              ActiveChats(),
              RecentChats(),
            ],
          ),


        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){},
        backgroundColor: Color(0xFF113953),
        child: Icon(CupertinoIcons.mail),
      ),
    );
  }
}

