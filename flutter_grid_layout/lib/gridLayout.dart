import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:fluttertoast/fluttertoast.dart';

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
          margin: const EdgeInsets.only(top: 120.0),
          child: GridView(
            //physics: BouncingScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
            children: events.map( (title) {
                return GestureDetector(
                  child: Card(
                      margin: const EdgeInsets.all(20.0),
                      child: getCardByTitle(title)),
                  onTap: () {
                    Fluttertoast.showToast(
                      msg: title + "Click",
                      toastLength: Toast.LENGTH_SHORT,
                      gravity: ToastGravity.CENTER,
                      backgroundColor: Colors.blue,
                      textColor: Colors.white,
                      fontSize: 16.0,
                    );
                  },
                );
              },
            ).toList(),
          ),
        ),
      ),
    );
  }

  Column getCardByTitle(String title) {
    String img = "";
    if (title == "Calendar")
      img = "assets/calendar.png";
    else if (title == "Family")
      img = "assets/family_time.png";
    else if (title == "Friends")
      img = "assets/friends.png";
    else if (title == "Lovely")
      img = "assets/lovely_time.png";
    else if (title == "Me")
      img = "assets/me_time.png";
    else 
      img = "assets/team_time.png";

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Center(
          child: Container(
            child: new Stack(
              children: <Widget>[
                new Image.asset(
                  img,
                  width: 80.0,
                  height: 80.0,
                ),
              ],
            ),
          ),
        ),
        Text(
          title,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
