import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({@required this.name, @required this.date});

  final String name;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            name,
            style: TextStyle(
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            date,
            style: TextStyle(color: Colors.grey),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              RaisedButton(
                color: Color(0xFF162A49),
                child: Text('Reserve'),
                textColor: Colors.white,
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(32),
                ),
                onPressed: () {
                  print("I am pressed!");
                },
              ),
              Spacer(),
              Text(
                '0.00 \$',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                ),
              ),
              SizedBox(
                width: 16,
              )
            ],
          ),
        ],
      ),
    );
  }
}
