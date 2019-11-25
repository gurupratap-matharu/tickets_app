import 'package:flutter/material.dart';
import 'package:tickets_app/widgets/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: SlidingCard(
          name: 'Ushuaia', date: '25-12-2019', assetName: 'steve-johnson.jpeg'),
    );
  }
}
