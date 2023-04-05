import 'package:dilivery_app_new/Screens/Help%20Line/help_line.dart';
import 'package:dilivery_app_new/Screens/Track_Order/track_order_two.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class track_order_one extends StatelessWidget {
  const track_order_one({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          automaticallyImplyLeading: false,
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
            "Track Order",
            style: TextStyle(fontSize: 25, color: Colors.black),
          ),
          centerTitle: true,
        ),
        body: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  "assets/mapping.png.jpg",
                  fit: BoxFit.cover,
                  // height: MediaQuery.of(context).size.height / 2,
                  // width: MediaQuery.of(context).size.width,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 180, right: 30),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(100),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0),
                            )
                          ]),
                      height: 50,
                      width: 50,
                      child: Center(
                        child: Text(
                          "1/2",
                          style:
                          TextStyle(fontSize: 15, color: Color(0xff263238)),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 260),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(70),
                            topRight: Radius.circular(70)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 423,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 25),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  SizedBox(width: 20),
                                  CircleAvatar(
                                    backgroundImage:
                                    AssetImage("assets/pic.png.jpg"),
                                  ),
                                  SizedBox(width: 10),
                                  Text(
                                    "Kamran saleem",
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff263238)),
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(1.0, 2.0),
                                          )
                                        ]),
                                    height: 40,
                                    width: 40,
                                    child: InkWell(
                                      onTap: () {},
                                      child: SvgPicture.asset(
                                        "assets/Iconly-Broken-Chat.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 10),
                                  Container(
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                        BorderRadius.circular(100),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 3,
                                            offset: Offset(1.0, 2.0),
                                          )
                                        ]),
                                    height: 40,
                                    width: 40,
                                    child: InkWell(
                                      onTap: () {Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { return help_line(); }));},
                                      child: SvgPicture.asset(
                                        "assets/Iconly-Broken-Call.svg",
                                        fit: BoxFit.scaleDown,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 20),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Divider(
                          color: Color(0xff707070),
                          thickness: 0.3,
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "Departure Time",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff263238)),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "Delivery Time",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff263238)),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "Distance",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff263238)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "25:45 pm",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFF970B)),
                            ),
                            SizedBox(width: 100),
                            Text(
                              "15 min",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFF970B)),
                            ),
                            SizedBox(width: 105),
                            Text(
                              "2 km",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFF970B)),
                            )
                          ],
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "Order Number",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff263238)),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "On Way",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xff263238)),
                            ),
                            SizedBox(width: 80),
                            Text(
                              "Rates",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xff263238)),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Text(
                              "YU584F#00",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFF970B)),
                            ),
                            SizedBox(width: 90),
                            Text(
                              "06 min",
                              style: TextStyle(
                                  fontSize: 18, color: Color(0xffFF970B)),
                            ),
                            SizedBox(width: 92),
                            Text(
                              "25\$",
                              style: TextStyle(
                                  fontSize: 12, color: Color(0xffFF970B)),
                            ),
                          ],
                        ),
                        SizedBox(height: 5),
                        Divider(
                          color: Color(0xff707070),
                          thickness: 0.3,
                        ),
                        Row(
                          children: [
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Color(0xff984438)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  height: 25,
                                  width: 25,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffFF970B),
                                        borderRadius:
                                        BorderRadius.circular(100),
                                      ),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 1.5,
                                  height: 20,
                                  color: Color(0xffFF725E),
                                ),
                                Container(
                                  decoration: BoxDecoration(
                                      border:
                                      Border.all(color: Color(0xff984438)),
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(100))),
                                  height: 25,
                                  width: 25,
                                  child: Padding(
                                    padding: const EdgeInsets.all(5),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Color(0xffCAC2C2),
                                        borderRadius:
                                        BorderRadius.circular(100),
                                      ),
                                      height: 20,
                                      width: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Pick up",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffCCCACA)),
                                  ),
                                  Text(
                                    "Johar Town near University of Education",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff263238)),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text(
                                    "To",
                                    style: TextStyle(
                                        fontSize: 10, color: Color(0xffCCCACA)),
                                  ),
                                  Text(
                                    "Ghosia Chowk near Arfan Plaza",
                                    style: TextStyle(
                                        fontSize: 15, color: Color(0xff263238)),
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ],
        )
    );
  }
}
