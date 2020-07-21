import 'package:flutter/material.dart';
import 'home.dart';

void main() {
  runApp(TakeNote());
}

class TakeNote extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.teal,
        scaffoldBackgroundColor: Colors.teal[900],
      ),
      home: Home(),
    );
  }
}
