import 'package:dilivery_app_new/Screens/History/Deliverd.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Pending extends StatelessWidget {
  const Pending({Key? key}) : super(key: key);

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
          "History",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 170),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "All",
                    style: TextStyle(fontSize: 15, color: Color(0xffCAC2C2)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Text(
                    "Pending",
                    style: TextStyle(fontSize: 15, color: Color(0xffFF970B)),
                  ),
                ),
                InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return Deliverd();
                    }));
                  },
                  child: Text(
                    "Deliverd",
                    style: TextStyle(fontSize: 15, color: Color(0xffCAC2C2)),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 76, right: 246),
            child: Container(
              height: .75,
              width: MediaQuery.of(context).size.width,
              color: Color(0xffFF995E),
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
            ]),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cash on Delivery",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Sep25,2022",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Boxes",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "14 min",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "YU584F#00",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Pending",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff87D8EA)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: .5,
                  color: Color(0xff707070),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff984438)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          height: 25,
                          width: 25,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFF970B),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        Container(
                          width: 1.5,
                          height: 30,
                          color: Color(0xffFF725E),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff984438)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          height: 25,
                          width: 25,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffCAC2C2),
                                borderRadius: BorderRadius.circular(100),
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
                                fontSize: 13, color: Color(0xff263238)),
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
                                fontSize: 13, color: Color(0xff263238)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    SvgPicture.asset("assets/Mask Group 5.svg",height: 60,width: 40,)
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          Container(
            decoration: BoxDecoration(color: Colors.white, boxShadow: [
              BoxShadow(
                  color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
            ]),
            height: MediaQuery.of(context).size.height / 4,
            width: MediaQuery.of(context).size.width,
            child: Column(
              children: [
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.only(left: 30, right: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Card",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Sep25,2022",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Shopping Back",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "14 min",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "YU584F#00",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xff263238)),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "Deliverd",
                            style: TextStyle(
                                fontSize: 12, color: Color(0xffFF970B)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),
                Divider(
                  thickness: .5,
                  color: Color(0xff707070),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(width: 20),
                    Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff984438)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          height: 25,
                          width: 25,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffFF970B),
                                borderRadius: BorderRadius.circular(100),
                              ),
                              height: 20,
                              width: 20,
                            ),
                          ),
                        ),
                        Container(
                          width: 1.5,
                          height: 30,
                          color: Color(0xffFF725E),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Color(0xff984438)),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100))),
                          height: 25,
                          width: 25,
                          child: Padding(
                            padding: const EdgeInsets.all(5),
                            child: Container(
                              decoration: BoxDecoration(
                                color: Color(0xffCAC2C2),
                                borderRadius: BorderRadius.circular(100),
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
                                fontSize: 13, color: Color(0xff263238)),
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
                                fontSize: 13, color: Color(0xff263238)),
                          )
                        ],
                      ),
                    ),
                    SizedBox(width: 15),
                    SvgPicture.asset("assets/Mask Group 5.svg",height: 60,width: 40,)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
