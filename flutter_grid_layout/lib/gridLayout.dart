import 'package:flutter/material.dart';

class GridLayout extends StatelessWidget {
  List<String> events = [
    "Calender",
    "Family",
    "Friends",
    "Lovely",
    "Me",
    "Team",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
         image: DecorationImage(
          image: AssetImage(
            "assets/bg.png",
          ),
          fit: BoxFit.cover,
         ),
        ), 
        child: Container(
          
        ),
      ), 
    );
  }
}
