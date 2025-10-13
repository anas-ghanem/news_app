import 'package:flutter/material.dart';
import 'package:news_app/home.dart';
import 'package:news_app/news_sarveses.dart';

NewsSarveses newsSarveses = NewsSarveses();
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
