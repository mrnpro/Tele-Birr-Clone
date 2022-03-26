import 'package:flutter/material.dart';

class bottomview extends StatelessWidget {
  const bottomview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 30,
        child: Positioned(
          bottom: 0,
          child: Image(
            image: AssetImage('asset/bottomview.png'),
            width: MediaQuery.of(context).size.width,
          ),
        ));
  }
}
