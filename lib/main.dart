import 'package:flutter/material.dart';
import 'package:flutter_issues/view/page/home.dart';
import 'package:logger/logger.dart';

final logger = Logger();

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
