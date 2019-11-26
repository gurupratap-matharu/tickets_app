import 'package:flutter/material.dart';
import 'package:tickets_app/widgets/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'My Show',
            style: TextStyle(
              color: Colors.grey.shade900,
            ),
          ),
        ),
        body: HomePage(),
      ),
    );
  }
}
