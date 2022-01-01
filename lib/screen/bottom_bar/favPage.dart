import 'package:flutter/material.dart';

class Favourite extends StatefulWidget {
  const Favourite({Key key}) : super(key: key);

  @override
  _FavouriteState createState() => _FavouriteState();
}

class _FavouriteState extends State<Favourite> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "FAVOURITE PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
