import 'package:flutter/material.dart';

class logo extends StatelessWidget {
  const logo({Key? key}) : super(key: key);

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
