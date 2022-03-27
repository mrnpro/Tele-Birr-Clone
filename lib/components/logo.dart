import 'package:flutter/material.dart';

class Logo extends StatelessWidget {
  const Logo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 30,
      child: Image(
        image: AssetImage('asset/logo.png'),
        width: MediaQuery.of(context).size.width / 2,
      ),
    );
  }
}
