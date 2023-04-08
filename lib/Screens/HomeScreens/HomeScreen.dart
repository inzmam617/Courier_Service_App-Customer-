import 'package:dilivery_app_new/Screens/Notification/notification.dart';
import 'package:dilivery_app_new/Screens/Order_Details/order_details.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool isSwitched = false;
  bool isSwitched1 = false;

  String name = "";
  String email = "";
  // const account({Key? key}) : super(key: key);
  void UserInfo() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      name = prefs.getString('name').toString()! ;
      email = prefs.getString('email').toString()! ;
    });
  }

  @override
  void initState() {
    super.initState();
    UserInfo();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(topRight: Radius.circular(150))),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 100),
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            color: Color(0xff87D8EA),
                            borderRadius: BorderRadius.circular(100),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 3,
                                  offset: Offset(1.0, 2.0))
                            ]),
                        height: 40,
                        width: 40,
                        child: SvgPicture.asset(
                          "assets/drawer.svg",
                          fit: BoxFit.scaleDown,
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          CircleAvatar(
                            backgroundImage: AssetImage("assets/pic.png.jpg"),
                            radius: 35,
                          ),
                          Text(
                            name,
                            style: TextStyle(fontSize: 24, color: Colors.black),
                          ),
                          Text(
                           email,
                            style:
                                TextStyle(fontSize: 10, color: Color(0xffCAC2C2)),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Profile",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/Profile.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Edit Profile",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Privacy",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "Notification",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/Iconly-Broken-Notification.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Switch(
                        activeColor: Color(0xffFF970B),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white,
                        value: isSwitched,
                        onChanged: (value) {
                          print("VALUE:$value");
                          setState(() {
                            isSwitched = value;

                          });
                        }),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Notifications Sound",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ),
                    Switch(
                        activeColor: Color(0xffFF970B),
                        activeTrackColor: Colors.white,
                        inactiveTrackColor: Colors.white,
                        value: isSwitched1,
                        onChanged: (value) {
                          print("VALUE:$value");
                          setState(() {
                            isSwitched1 = value;

                          });
                        }),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.only(left: 30),
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: "More",
                    hintStyle: TextStyle(fontSize: 16, color: Colors.black),
                    prefixIcon: SvgPicture.asset(
                      "assets/Iconly-Broken-Paper Plus.svg",
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Language",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Country",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                      SvgPicture.asset("assets/icon.svg")
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Help",
                        style: TextStyle(fontSize: 15, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30,)
            ],
          ),
        ),
      ),
      appBar: AppBar(
        toolbarHeight: 100,
        elevation: 1.0,
        automaticallyImplyLeading: false,
        backgroundColor: Color(0xff87D8EA),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hi, ${name}",
              style: TextStyle(color: Colors.white, fontSize: 22),
            ),
            Text(
              "What you want to deliver",
              style: TextStyle(color: Colors.white54, fontSize: 12),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              children: [
                SizedBox(
                  height: 40,
                  width: 40,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)))),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white)),
                      onPressed: () {
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return notification();
                        }));
                      },
                      child: SvgPicture.asset(
                        "assets/bell.svg",
                        fit: BoxFit.cover,
                      )),
                ),
                SizedBox(
                  width: 10,
                ),
                Builder(builder: (context) {
                  return SizedBox(
                    height: 40,
                    width: 40,
                    child: ElevatedButton(
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.all(
                                        Radius.circular(100)))),
                            backgroundColor:
                                MaterialStateProperty.all(Colors.white)),
                        onPressed: () {
                          Scaffold.of(context).openDrawer();
                        },
                        child: SvgPicture.asset(
                          "assets/more.svg",
                          fit: BoxFit.cover,
                        )),
                  );
                }),
              ],
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              decoration: const BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 3.5)],
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.orange),
                              // color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.orange,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ),
                          ),
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.all(2.0),
                              child: Container(
                                width: 0.8,
                                color: Colors.orange,
                              ),
                            ),
                          ),
                          Container(
                            height: 20,
                            width: 20,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              // color: Colors.orange,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(100)),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2),
                              child: Container(
                                decoration: BoxDecoration(
                                    color: Colors.grey,
                                    borderRadius: BorderRadius.circular(100)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                hintText: "Pick Up",
                                border: InputBorder.none,
                                label: Text(
                                  "From",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            ),
                            Expanded(
                              child: Divider(
                                  height: 0.5,
                                  thickness: 1.0,
                                  color: Colors.black.withOpacity(0.3)),
                            ),
                            TextFormField(
                              decoration: InputDecoration(
                                hintText: "Destnation",
                                suffix: TextButton(
                                  onPressed: () {},
                                  child: Text(
                                    "save",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 12),
                                  ),
                                ),
                                border: InputBorder.none,
                                label: Text(
                                  "To",
                                  style: TextStyle(fontSize: 15),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
                height: 200,
                width: MediaQuery.of(context).size.width,
                child: Image.asset(
                  "assets/Screenshot 2022-10-02 155650.png",
                  fit: BoxFit.cover,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Vehicle Type",
                  style: TextStyle(color: Color(0xff263238), fontSize: 14),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/cycle.svg"),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Bicycle",
                              style: TextStyle(
                                  color: Color(0xff87D8EA), fontSize: 11),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SvgPicture.asset("assets/bike.svg"),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Bike",
                              style: TextStyle(
                                  color: Color(0xff87D8EA), fontSize: 12),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.white),
                          shape: MaterialStateProperty.all(
                              RoundedRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100))))),
                      onPressed: () {},
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: [
                            SizedBox(
                              height: 10,
                            ),
                            SvgPicture.asset("assets/truck.svg"),
                            SizedBox(
                              height: 2,
                            ),
                            Text(
                              "Truck",
                              style: TextStyle(
                                  color: Color(0xff87D8EA), fontSize: 10),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        ),
                      )),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: SizedBox(
                height: 30,
                width: 130,
                child: ElevatedButton(
                  child: Text("Done"),
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (BuildContext context) {
                      return order_details();
                    }));
                  },
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)))),
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xff87D8EA))),
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
