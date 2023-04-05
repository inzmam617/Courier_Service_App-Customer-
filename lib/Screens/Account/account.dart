import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class account extends StatelessWidget {
  const account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height / 6,
                width: MediaQuery.of(context).size.width,
                color: Color(0xff87D8EA),
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.black,
                            )),
                        Padding(
                          padding: const EdgeInsets.only(left: 100),
                          child: Text(
                            "Account",
                            style: TextStyle(fontSize: 22, color: Colors.black),
                          ),
                        )
                      ],
                    ),
                  ),
                  CircleAvatar(
                    backgroundImage: AssetImage("assets/pic.png.jpg"),
                    radius: 45,
                  ),
                  Text(
                    "Inzmam Malik",
                    style: TextStyle(fontSize: 14, color: Color(0xffFF970B)),
                  )
                ],
              )
            ],
          ),
          SizedBox(height: 30),
          InkWell(onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(1.0,2.0)
                )]
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  SvgPicture.asset("assets/Iconly-Broken-Time Circle.svg"),
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Text("Order History",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ),
                  SvgPicture.asset("assets/icon.svg")
                ],),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0,2.0)
                  )]
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 15),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/Iconly-Broken-Bookmark.svg"),
                    Padding(
                      padding: const EdgeInsets.only(right: 200),
                      child: Text("Promo Code",style: TextStyle(fontSize: 15,color: Colors.black),),
                    ),
                    SvgPicture.asset("assets/icon.svg")
                  ],),
              ),
            ),
          ),
          SizedBox(height: 10),
          InkWell(onTap: (){},
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0,2.0)
                  )]
              ),
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Padding(
                padding: const EdgeInsets.only(left: 15,right: 270),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SvgPicture.asset("assets/Iconly-Broken-Login.svg"),
                    Text("Log out",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
