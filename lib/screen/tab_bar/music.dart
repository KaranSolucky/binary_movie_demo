import 'package:flutter/material.dart';
import 'package:movieeee/Utils/Dataconstants.dart';

class MusicPage extends StatefulWidget {
  const MusicPage({Key key}) : super(key: key);

  @override
  _MusicPageState createState() => _MusicPageState();
}

class _MusicPageState extends State<MusicPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "MUSIC PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
