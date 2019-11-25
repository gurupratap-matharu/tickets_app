import 'package:flutter/material.dart';
import 'package:tickets_app/widgets/card_content.dart';

class SlidingCard extends StatelessWidget {
  final String name;
  final String date;
  final String assetName;

  SlidingCard(
      {@required this.name, @required this.date, @required this.assetName});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(left: 8, right: 8, bottom: 24),
      elevation: 8,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
      child: Column(
        children: <Widget>[
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(32)),
            child: Image.asset(
              'assets/$assetName',
              height: MediaQuery.of(context).size.height * 0.3,
              fit: BoxFit.none,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Expanded(
            child: CardContent(
              name: name,
              date: date,
            ),
          ),
        ],
      ),
    );
  }
}
