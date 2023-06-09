import 'package:e_com/Screens/detail_page.dart';
import 'package:e_com/utils/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => HomePage(),
        'detail_page': (context) => Details_Screen(),
      },
    ),
  );
}
