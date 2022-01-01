import 'package:flutter/material.dart';
import 'package:movieeee/Utils/Dataconstants.dart';

class MovieDetail extends StatefulWidget {
  String title;
  MovieDetail({Key key, this.title});

  @override
  _MovieDetailState createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(widget.title),
      ),
    );
  }
}
