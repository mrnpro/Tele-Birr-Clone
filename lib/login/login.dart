import 'package:flutter/material.dart';
import 'package:telebirr/components/logo.dart';
import 'package:telebirr/constants.dart';
import 'package:telebirr/login/loginbody.dart';

class login extends StatelessWidget {
  const login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kwhite,
      body: Container(
          child: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
            ),
            Logo(),
            loginbody(),
            Positioned(
              bottom: 0,
              child: Image(
                image: AssetImage('asset/bottomview.png'),
                width: MediaQuery.of(context).size.width,
              ),
            ),
            Positioned(
                width: MediaQuery.of(context).size.width,
                bottom: 100,
                child: Center(child: Text("cloned by mrnpro"))),
          ],
        ),
      )),
    );
  }
}
