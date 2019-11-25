import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.name, @required this.date});

  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(name),
        SizedBox(
          height: 8,
        ),
        Text(
          date,
        ),
        Spacer(),
        Row(),
      ],
    );
  }
}
