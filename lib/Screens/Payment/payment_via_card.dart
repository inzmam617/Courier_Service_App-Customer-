import 'package:dilivery_app_new/Screens/Account/account.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class payment_via_card extends StatelessWidget {
  const payment_via_card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        toolbarHeight: 80,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            )),
        title: Text(
          "Payment via Card",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 15),
            Center(child: SvgPicture.asset("assets/credit card.svg")),
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Card Holder",
                style: TextStyle(fontSize: 12, color: Color(0xff8F92A1)),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextFormField(
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16),
                  prefixIcon: SvgPicture.asset(
                    "assets/Profile.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "Oguz Bulbul",
                  hintStyle: TextStyle(color: Color(0xff171717), fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(right: 200),
              child: Text(
                "Card Number",
                style: TextStyle(fontSize: 12, color: Color(0xff8F92A1)),
              ),
            ),
            SizedBox(height: 5),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35),
              child: TextFormField(
                style: TextStyle(color: Color(0xffC0BDBD)),
                decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(top: 16),
                  prefixIcon: SvgPicture.asset(
                    "assets/Iconly-Broken-Chart.svg",
                    fit: BoxFit.scaleDown,
                  ),
                  hintText: "888532112155",
                  hintStyle: TextStyle(color: Color(0xff171717), fontSize: 15),
                ),
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 35.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Text(
                        "Expiry Date",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff8F92A1)),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.9,
                        child: TextFormField(
                          style: TextStyle(color: Color(0xffC0BDBD)),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 16),
                            prefixIcon: SvgPicture.asset(
                              "assets/Iconly-Broken-Calendar.svg",
                              fit: BoxFit.scaleDown,
                            ),
                            hintText: "01/2022",
                            hintStyle: TextStyle(
                                color: Color(0xff171717), fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Text(
                        "CCV",
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff8F92A1)),
                      ),
                      SizedBox(height: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 2.9,
                        child: TextFormField(
                          style: TextStyle(color: Color(0xffC0BDBD)),
                          decoration: InputDecoration(
                            contentPadding: EdgeInsets.only(top: 16),
                            prefixIcon: SvgPicture.asset(
                              "assets/Iconly-Broken-Lock.svg",
                              fit: BoxFit.scaleDown,
                            ),
                            hintText: "0 0 0",
                            hintStyle: TextStyle(
                                color: Color(0xff171717), fontSize: 15),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 40),
            SizedBox(
              height: 30,
              width: 130,
              child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return account();
                    }));
                  },
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff87D8EA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Done",
                    style: TextStyle(fontSize: 14, color: Colors.white),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
