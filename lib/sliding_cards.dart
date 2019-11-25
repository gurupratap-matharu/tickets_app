import 'package:flutter/material.dart';
import 'package:tickets_app/widgets/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.55,
      child: PageView(
        controller: pageController,
        children: <Widget>[
          SlidingCard(
              name: 'Buenos Aires Art Week',
              date: '25-12-2019',
              assetName: 'steve-johnson.jpeg'),
          SlidingCard(
            name: 'Santiago Fashion Era',
            date: '05-01-2020',
            assetName: 'rodion-kutsaev.jpeg',
          ),
        ],
      ),
    );
  }
}
