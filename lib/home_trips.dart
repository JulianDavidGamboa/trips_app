import 'package:flutter/material.dart';
import 'package:trips_app/description_place.dart';
import 'package:trips_app/header_appbar.dart';
import 'package:trips_app/review_list.dart';

class HomeTrips extends StatelessWidget {

  String descriptionDummy = 'Cupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat Cupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat Cupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat Cupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat \n\nCupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat Cupidatat pariatur eiusmod labore sunt veniam adipisicing et ullamco consequat';

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("Bahamas", 4, descriptionDummy),
                ReviewList()
              ],
            ),
            HeaderAppBar()
          ],
        );
  }

}