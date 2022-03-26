import 'package:flutter/material.dart';
import 'package:telebirr/login/login.dart';
import 'package:telebirr/splash.dart';

class wrapper extends StatefulWidget {
  wrapper({Key? key}) : super(key: key);
  bool istrue = true;
  @override
  State<wrapper> createState() => _wrapperState();
}

class _wrapperState extends State<wrapper> {
  Future<void> timer() async {
    Future.delayed(Duration(seconds: 10), () {
      print("hey");
      setState(() {
        //widget.istrue = true;
      });
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer();
  }

  @override
  Widget build(BuildContext context) {
    return login();
  }
}
