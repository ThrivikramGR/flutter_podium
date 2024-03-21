import 'package:flutter/material.dart';
import "package:flutter_podium/flutter_podium.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Podium Demo',
      home: Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Podium(
            firstPosition: Text(
              "Winner 1",
            ),
            secondPosition: Text(
              "Winner 2",
            ),
            thirdPosition: Text(
              "Winner 3",
            ),
          ),
        ),
      ),
    );
  }
}
