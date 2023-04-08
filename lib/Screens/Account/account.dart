import 'package:dilivery_app_new/API/cusomer_LogOut.dart';
import 'package:dilivery_app_new/API/cusomer_deleteId.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../SignIn_SignUp/SignIn.dart';

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
          InkWell(onTap: () {

            ApiServiceForLogout.logout().then((value)  {
              if(value.message == "Customer logged out successfully"){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return SignIn();
                }));

              }else
                showDialog(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text("Error"),
                  content: value.error == null ? Text(value.message.toString()) : Text(value.error.toString()),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"),
                    ),
                  ],
                ),
              );
            });

          },
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
          SizedBox(height: 10),

          InkWell(onTap: () {

            ApiServiceForDeleteUserId.deleteuser().then((value)  {
              if(value.message == "Customer deleted successfully"){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return SignIn();
                }));

              }else
                showDialog(
                context: context,
                builder: (BuildContext context) => CupertinoAlertDialog(
                  title: const Text("Error"),
                  content: value.error == null ? Text(value.message.toString()) : Text(value.error.toString()),
                  actions: <Widget>[
                    CupertinoDialogAction(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text("Ok"),
                    ),
                  ],
                ),
              );
            });

          },
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
                    Icon(Icons.delete ,color: Colors.blue,),
                    // SvgPicture.asset("assets/Iconly-Broken-Login.svg"),
                    Text("Delete",style: TextStyle(fontSize: 15,color: Colors.black),),
                  ],),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
