import 'package:flutter/material.dart';
import 'package:telebirr/Home/cards.dart';
import 'package:telebirr/components/bottomview.dart';
import 'package:telebirr/components/logo.dart';
import 'package:telebirr/constants.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kwhite,
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: AssetImage('asset/logo2.png'),
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Text(
                    "Good Morning",
                    style: TextStyle(fontSize: 20),
                  )
                ]),
                SizedBox(
                  height: 10,
                ),
                Container(
                  child: Stack(children: [
                    Center(
                      child: Text(
                        "View Balance",
                        style: TextStyle(
                            color: ktextblue, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Positioned(
                        right: 0,
                        child: IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.remove_red_eye_sharp,
                              color: ktextblue,
                            )))
                  ]),
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: kgraylight,
                ),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      "Transaction Detail   >",
                      style: TextStyle(
                        color: ktextblue,
                      ),
                    )),
                Container(
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards(title: "Deposit Cash"),
                          cards(title: "Buy Airtime/Package"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards(title: "Send Money"),
                          cards(title: "Pay with telebirr"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards(title: "Recieve Payment"),
                          cards(title: "Pay for merchant"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          cards(title: "withdraw cash "),
                          cards(title: "GERD"),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width,
                          color: ktextblue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.qr_code,
                                color: kwhite,
                              ),
                              Text(
                                "Scan QR",
                                style: TextStyle(color: kwhite, fontSize: 20),
                              )
                            ],
                          )),
                      SizedBox(
                        height: 10,
                      ),
                      MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width,
                          color: kwhite,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => Home()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.print,
                                color: Colors.orange,
                              ),
                              Text(
                                "Mini Statement",
                                style:
                                    TextStyle(color: ktextblue, fontSize: 20),
                              )
                            ],
                          )),
                    ],
                  ),
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      color: kgraylight,
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20))),
                )
              ],
            ),
          ),
        ));
  }
}
