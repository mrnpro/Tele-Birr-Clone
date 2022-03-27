import 'package:flutter/material.dart';
import 'package:telebirr/Home/card.dart' as MyCard;
import 'package:telebirr/common/sizes.dart';
import 'package:telebirr/components/bottom_view.dart';
import 'package:telebirr/components/home_dashboard_row.dart';
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
            padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    Image(
                      image: const AssetImage('asset/logo2.png'),
                      width: MediaQuery.of(context).size.width / 3,
                    ),
                  ],
                ),
                Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Good Morning",
                        style: TextStyle(fontSize: 20),
                      )
                    ]),
                const SizedBox(
                  height: Sizes.dimen_10,
                ),
                Container(
                  child: Stack(children: [
                    const Center(
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
                            icon: const Icon(
                              Icons.remove_red_eye_sharp,
                              color: ktextblue,
                            )))
                  ]),
                  margin: const EdgeInsets.symmetric(horizontal: 12),
                  width: MediaQuery.of(context).size.width,
                  height: 50,
                  color: kgraylight,
                ),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Transaction Detail   >",
                      style: TextStyle(
                        color: ktextblue,
                      ),
                    )),
                Container(
                  padding: const EdgeInsets.all(Sizes.dimen_20),
                  child: Column(
                    children: [
                      const HomeDashBoardRow(
                        cardFirstTitle: "Deposit Cash",
                        cardSecondTitle: "Buy Airtime/Package",
                      ),
                      const SizedBox(
                        height: Sizes.dimen_10,
                      ),
                      const HomeDashBoardRow(
                        cardFirstTitle: "Send Money",
                        cardSecondTitle: "Pay with telebirr",
                      ),
                      const SizedBox(
                        height: Sizes.dimen_10,
                      ),
                      const HomeDashBoardRow(
                        cardFirstTitle: "Receive Payment",
                        cardSecondTitle: "Pay for merchant",
                      ),
                      const SizedBox(
                        height: Sizes.dimen_10,
                      ),
                      const HomeDashBoardRow(
                        cardFirstTitle: "withdraw cash ",
                        cardSecondTitle: "GERD",
                      ),
                      const SizedBox(
                        height: Sizes.dimen_10,
                      ),
                      MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width,
                          color: ktextblue,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Icon(
                                Icons.qr_code,
                                color: kwhite,
                              ),
                              Text(
                                "Scan QR",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: Sizes.dimen_20),
                              )
                            ],
                          )),
                      const SizedBox(
                        height: Sizes.dimen_10,
                      ),
                      MaterialButton(
                          height: 50,
                          minWidth: MediaQuery.of(context).size.width,
                          color: Colors.white,
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Home()));
                          },
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(40)),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
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
                  decoration: const BoxDecoration(
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
