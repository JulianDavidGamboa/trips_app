import 'package:flutter/material.dart';

import 'home_trips.dart';
import 'package:trips_app/profile_trips.dart';
import 'package:trips_app/search_trips.dart';

class MyTrips extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyTrips();
  }

}

class _MyTrips extends State<MyTrips> {
  
  int indexTap = 0;

  final List<Widget> widgetsChildren = [
    HomeTrips(),
    SearchTrips(),
    ProfileTrips()
  ];

  void onTapTapped(int index) {

    setState(() {
      indexTap = index;
    });

  }
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build


    return Scaffold(
        body: widgetsChildren[indexTap],
        bottomNavigationBar: Theme(
          data: Theme.of(context).copyWith(
            canvasColor: Colors.white,
            primaryColor: Colors.purple
          ),
          child: BottomNavigationBar(
            onTap: onTapTapped,
            currentIndex: indexTap,
            items: [
              BottomNavigationBarItem(
                icon: Icon( Icons.home ),
                title: Text("") 
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.search ),
                title: Text("") 
              ),
              BottomNavigationBarItem(
                icon: Icon( Icons.person ),
                title: Text("") 
              ),
            ]
          ),
        ), 
    );
  }

}