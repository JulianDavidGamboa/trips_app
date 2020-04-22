import 'package:flutter/material.dart';


class FloatingActionButtonGreen extends StatefulWidget {
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _FloatingActionButtonGreen();
  }
  

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen> {
  
  bool like = false;

  void onPressedFav() {
    setState(() {
      like = !like;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
        like ? Icons.favorite : Icons.favorite_border
      ),
    );
  }

}