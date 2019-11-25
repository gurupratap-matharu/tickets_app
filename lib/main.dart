import 'package:flutter/material.dart';
import 'sliding_cards.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        body: SlidingCardsView(),
      ),
    );
  }
}
