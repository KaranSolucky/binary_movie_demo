import 'package:flutter/material.dart';

class NewMovie extends StatefulWidget {
  const NewMovie({Key key}) : super(key: key);

  @override
  _NewMovieState createState() => _NewMovieState();
}

class _NewMovieState extends State<NewMovie> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "MOVIE PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
