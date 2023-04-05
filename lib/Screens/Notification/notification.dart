import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class notification extends StatelessWidget {
  const notification({Key? key}) : super(key: key);

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
          "Notification",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 50,
                    width: 250,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What are you looking for ",
                          hintStyle:
                              TextStyle(fontSize: 10, color: Color(0xffCAC2C2)),
                          prefixIcon: SvgPicture.asset(
                            "assets/Search.svg",
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                  SizedBox(
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            primary: Color(0xffFFFFFF),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15))),
                        child: SvgPicture.asset(
                          "assets/Delete.svg",
                          fit: BoxFit.scaleDown,
                        )),
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "This Week",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: Center(
                        child: Text(
                      "2",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      "assets/Notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      "assets/Notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Text(
                    "This Month",
                    style: TextStyle(fontSize: 15, color: Colors.black),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xffFF970B),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    height: 20,
                    width: 25,
                    child: Center(
                        child: Text(
                      "5",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      "assets/Notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 60,
                    width: 60,
                    child: SvgPicture.asset(
                      "assets/Notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                  SizedBox(width: 20),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur",
                        style: TextStyle(fontSize: 13, color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            "April 23,2022",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                          SizedBox(width: 150),
                          Text(
                            "4:21 AM ",
                            style: TextStyle(
                                fontSize: 10, color: Color(0xff87D8EA)),
                          ),
                        ],
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
