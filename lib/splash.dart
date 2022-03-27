import 'package:flutter/material.dart';
import 'package:telebirr/components/bottom_view.dart';
import 'package:telebirr/components/logo.dart';

class splash extends StatelessWidget {
  const splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: const [Logo(), BottomView()],
        ));
  }
}
