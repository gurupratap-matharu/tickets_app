import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  CardContent({
    @required this.name,
    @required this.date,
    @required this.offset,
  });

  final String name;
  final String date;
  final double offset;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              name,
              style: TextStyle(
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Transform.translate(
            offset: Offset(32 * offset, 0),
            child: Text(
              date,
              style: TextStyle(color: Colors.grey),
            ),
          ),
          Spacer(),
          Row(
            children: <Widget>[
              Transform.translate(
                offset: Offset(48 * offset, 0),
                child: RaisedButton(
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
              ),
              Spacer(),
              Transform.translate(
                offset: Offset(8 * offset, 0),
                child: Text(
                  '0.00 \$',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
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
