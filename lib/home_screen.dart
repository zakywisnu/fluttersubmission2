import 'package:flutter/material.dart';
import 'package:flutterdicoding/Pages/breakfast_page.dart';
import 'package:flutterdicoding/Pages/dinner_page.dart';


class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
        length: 2,
          child: Scaffold(
             appBar: AppBar(
                 bottom: TabBar(
                   tabs: <Widget>[
                     Tab(text: "Breakfast",),
                     Tab(text: "Dinner",)
                  ],
                ),
               title: Text("Makanan"),
              ),
             body: TabBarView(
            children: <Widget>[
              BreakfastPage(),
              DinnerPage(),
            ],
          ),
        ),
    )
    ,
    );
  }


}