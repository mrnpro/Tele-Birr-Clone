import 'package:flutter/material.dart';
import 'package:telebirr/Home/Home.dart';
import 'package:telebirr/constants.dart';

class loginbody extends StatelessWidget {
  const loginbody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 100,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              Center(
                child: kwelcometxt,
              ),
              SizedBox(height: 50),
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(5)),
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(top: 2, left: 8, child: Text("Mobile number")),
                    Positioned(
                        top: 17,
                        left: 8,
                        child: Row(
                          children: [
                            Text(
                              "+251",
                              style: TextStyle(color: graycolor),
                            ),
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: MediaQuery.of(context).size.width,
                              child: TextField(
                                keyboardType: TextInputType.phone,
                                decoration: InputDecoration(
                                    hintText: "Enter mobile number"),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              //pin
              Container(
                decoration: BoxDecoration(
                    border: Border.all(color: graycolor),
                    borderRadius: BorderRadius.circular(5)),
                height: MediaQuery.of(context).size.height / 11,
                width: MediaQuery.of(context).size.width,
                child: Stack(
                  children: [
                    Positioned(top: 2, left: 8, child: Text("PIN")),
                    Positioned(
                        top: 17,
                        left: 8,
                        child: Row(
                          children: [
                            Container(
                              margin: EdgeInsets.symmetric(horizontal: 5),
                              width: MediaQuery.of(context).size.width,
                              child: TextField(
                                keyboardType: TextInputType.number,
                                obscureText: true,
                                decoration:
                                    InputDecoration(hintText: "Enter PIN"),
                              ),
                            )
                          ],
                        ))
                  ],
                ),
              ),
              SizedBox(
                height: 13,
              ),
              Row(
                children: [
                  Text(
                    "Pin Must be 6 digit",
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Row(
                children: [
                  TextButton(
                    onPressed: () => {},
                    child: Text(
                      "Forgot PIN",
                      style: TextStyle(
                        color: ktextblue,
                      ),
                    ),
                  )
                ],
              ),
              MaterialButton(
                  height: 50,
                  minWidth: MediaQuery.of(context).size.width,
                  color: ktextblue,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Home()));
                  },
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(40)),
                  child: Text(
                    "Login",
                    style: TextStyle(color: kwhite, fontSize: 20),
                  )),
              Row(
                children: [
                  Text("Dont have an account? "),
                  TextButton(
                      onPressed: () {}, child: Text("Create New Account "))
                ],
              )
            ],
          ),
        ));
  }
}
