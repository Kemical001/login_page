import 'package:flutter/material.dart';

class FoodApp extends StatelessWidget {
  const FoodApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Welcome"),
        titleTextStyle: TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        backgroundColor: Colors.green,
        centerTitle: true,
      ),
      body: Row(
        children: [
          Expanded(flex: 1, child: Image.asset("assets/logo.png")),
          Expanded(
            flex: 3,
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.pink,
              child: Text("1"),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.blueAccent,
              child: Text("2"),
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(30.0),
              color: Colors.amberAccent,
              child: Text("3"),
            ),
          ),
        ],
      ),
    );
  }
}
