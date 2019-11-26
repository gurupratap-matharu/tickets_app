import 'package:flutter/material.dart';
import 'package:tickets_app/sliding_cards.dart';
import 'tabs.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 8),
          Tabs(),
          SizedBox(height: 8),
          SlidingCardsView(),
        ],
      ),
    );
  }
}
