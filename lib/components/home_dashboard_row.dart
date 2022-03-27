import 'package:flutter/material.dart';
import 'package:telebirr/Home/card.dart' as MyCard;

class HomeDashBoardRow extends StatelessWidget {
  const HomeDashBoardRow(
      {Key? key, required this.cardFirstTitle, required this.cardSecondTitle})
      : super(key: key);
  final String cardFirstTitle, cardSecondTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        MyCard.Card(title: cardFirstTitle),
        MyCard.Card(title: cardSecondTitle),
      ],
    );
  }
}
