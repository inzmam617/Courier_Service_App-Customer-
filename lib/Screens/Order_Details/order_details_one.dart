import 'package:dilivery_app_new/Screens/Track_Order/track_order.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class order_details_one extends StatelessWidget {
  const order_details_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          toolbarHeight: 80,
          backgroundColor: Colors.white,
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back,
                color: Colors.black,
              )),
          title: Text(
            "Order Details",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Column(children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Package Detail",
                    style: TextStyle(fontSize: 16, color: Color(0xff263238)),
                  )),
            ),
            SizedBox(height: 5),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
              ]),
              height: 186,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Package Type",
                          style:
                              TextStyle(fontSize: 13, color: Color(0xff263238)),
                        )),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: DropdownButtonFormField(
                  decoration: InputDecoration(border: InputBorder.none),
              iconSize: 0.0,
              value: "Box",
              items: [
                DropdownMenuItem(
                  child: Text(
                    "Box",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Box",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Bag",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Bag",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Shopping Bag",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Shopping Bag",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Book",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Book",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Electronics",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Electronics",
                ),
                DropdownMenuItem(
                  child: Text(
                    "Grocery",
                    style:
                    TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                  ),
                  value: "Grocery",
                )
              ],
              onChanged: (value) {
                print("changed");
              },
            ),

                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Package Size",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                        )),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                          hintText: "23m,21m",
                          hintStyle:
                          TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                          suffixIcon: SvgPicture.asset(
                            "assets/Arrow - Right 2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Package Weight",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                        )),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                          hintText: "21kg",
                          hintStyle:
                          TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                          suffixIcon: SvgPicture.asset(
                            "assets/Arrow - Right 2.svg",
                            fit: BoxFit.scaleDown,
                          ),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Receiver Detail",
                  style: TextStyle(fontSize: 15, color: Color(0xff263238)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
              ]),
              height: 128,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Receiver Name",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                        )),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                          hintText: "Ali Asghar",
                          hintStyle:
                          TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 5),
                  Padding(
                    padding: const EdgeInsets.only(left: 35),
                    child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Receiver Number",
                          style:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                        )),
                  ),
                  SizedBox(height: 5),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 20),
                          hintText: "03216588901",
                          hintStyle:
                          TextStyle(fontSize: 11, color: Color(0xffCAC2C2)),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            Padding(
              padding: const EdgeInsets.only(left: 35),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Payment Method",
                  style: TextStyle(fontSize: 15, color: Color(0xff263238)),
                ),
              ),
            ),
            SizedBox(height: 10),
            Container(
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
              ]),
              height: 95,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 16.5),
                          hintText: "Bank",
                          hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                          border: InputBorder.none),
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(32),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 30,
                    width: 300,
                    child: TextFormField(
                      cursorWidth: 0.5,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.only(left: 20, bottom: 16.5),
                          hintText: "Cash on Delivery",
                          hintStyle:
                          TextStyle(fontSize: 13, color: Color(0xff263238)),
                          border: InputBorder.none),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 25),
            Container(
              decoration: BoxDecoration(
                  color: Color(0xffFF970B),
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        blurRadius: 3,
                        offset: Offset(1.0, 2.0))
                  ]),
              height: 40,
              width: 300,
              child: Center(
                child: TextFormField(
                  cursorWidth: 0.5,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 20, top: 7),
                      hintText: "Apply Promo Code",
                      hintStyle: TextStyle(fontSize: 16, color: Colors.white),
                      suffixIcon: SvgPicture.asset(
                        "assets/Iconly-Light-outline-Arrow - Right 2.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      border: InputBorder.none),
                ),
              ),
            ),
            SizedBox(height: 60),
            SizedBox(
              width: 130,
              height: 30,
              child: ElevatedButton(
                  onPressed: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { return track_order(); }));},
                  style: ElevatedButton.styleFrom(
                      primary: Color(0xff87D8EA),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32))),
                  child: Text(
                    "Request",
                    style: TextStyle(fontSize: 15, color: Colors.white),
                  )),
            ),
            SizedBox(height: 50),
          ]),
        ));
  }
}
