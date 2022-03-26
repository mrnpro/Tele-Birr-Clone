import 'package:flutter/material.dart';
import 'package:telebirr/components/bottomview.dart';
import 'package:telebirr/components/logo.dart';
import 'package:telebirr/constants.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        body: Container(
          child: Stack(
            children: [logo(), bottomview()],
          ),
        ));
  }
}
