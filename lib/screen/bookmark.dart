import 'package:flutter/material.dart';

class BookMark extends StatefulWidget {
  const BookMark({Key key}) : super(key: key);

  @override
  _BookMarkState createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
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
          "BOOKMARK PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
