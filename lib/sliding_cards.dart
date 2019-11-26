import 'package:flutter/material.dart';
import 'package:tickets_app/widgets/sliding_card.dart';

class SlidingCardsView extends StatefulWidget {
  @override
  _SlidingCardsViewState createState() => _SlidingCardsViewState();
}

class _SlidingCardsViewState extends State<SlidingCardsView> {
  PageController pageController;
  double pageOffset = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController(viewportFraction: 0.8);
    pageController.addListener(() {
      setState(() {
        pageOffset = pageController.page;
      });
    });
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
            assetName: 'steve-johnson.jpeg',
            offset: pageOffset,
          ),
          SlidingCard(
            name: 'Santiago Fashion Era',
            date: '05-01-2020',
            assetName: 'rodion-kutsaev.jpeg',
            offset: pageOffset,
          ),
        ],
      ),
    );
  }
}
