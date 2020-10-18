import 'package:flutter/material.dart';
import 'first_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0B1034),
        scaffoldBackgroundColor: Color(0xFF0B1034),
      ),
      home: MyFirstPage(),
    );
  }
}
