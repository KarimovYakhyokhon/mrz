import 'package:flutter/material.dart';
import 'file:///C:/Users/innovations/Desktop/My%20Flutter%20Projects/mrz/lib/pages/home_page.dart';
void main() => runApp(UI());

class UI extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
