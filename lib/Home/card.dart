import 'package:flutter/material.dart';
import 'package:telebirr/constants.dart';

class Card extends StatelessWidget {
  const Card({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(borderRadius: BorderRadius.circular(12), color: kwhite),
      width: MediaQuery.of(context).size.width / 2.5,
      height: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(
            child: Icon(
              Icons.account_balance,
              color: Colors.orange,
              size: 30,
            ),
          ),
          Text(
            title,
            style: const TextStyle(color: ktextblue, fontWeight: txtstylebold),
          )
        ],
      ),
    );
  }
}
