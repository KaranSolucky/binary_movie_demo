import 'package:flutter/material.dart';

class Menu extends StatefulWidget {
  const Menu({Key key}) : super(key: key);

  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
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
          "MENU PAGE",
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
