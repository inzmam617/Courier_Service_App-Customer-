import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../API/customerSIgnUp_SignIn.dart';
import '../Bottom bar/Bottom_bar.dart';
import '../HomeScreens/HomeScreen.dart';
import 'SignUp.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 100,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: SvgPicture.asset(
                "assets/Group 2390.svg",
                height: MediaQuery.of(context).size.height / 3.1,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Sign in",
              style: TextStyle(color: Colors.black, fontSize: 24),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 14),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xffCCCACA)),
                      prefixIcon: SvgPicture.asset(
                        "assets/Message.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                SizedBox(height: 5),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 14),
                      suffixIcon: SvgPicture.asset(
                        "assets/Iconly-Broken-Show.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(color: Color(0xffCCCACA)),
                      prefixIcon: SvgPicture.asset(
                        "assets/pass.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                SizedBox(height: 5),
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(onTap: (){},
                    child: Text(
                        "Forgot Password",
                        style: TextStyle(color: Colors.black, fontSize: 10),
                      ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 25
          ),
          Center(
            child: SizedBox(
              width: 130,
              height: 30,
              child: ElevatedButton(
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                    backgroundColor:
                        MaterialStateProperty.all(Color(0xff87D8EA))),
                onPressed: () {
                  Map<String ,dynamic> body = {
                    // "email": " immuhammadfaizan@gmail.com",
                    // "password": "mysecretpassword"

                  "email": "inzmam2@gmail.com",
                  "password": "mysecretpassword"

                  };
                  ApiServiceForSignIn.signin(body).then((value) {
                    if(value.userId != null){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                        return Bottom_bar();
                      }));
                    }
                    else{
                      showDialog(
                          context: context,
                          builder: (BuildContext context) => CupertinoAlertDialog(
                        title: const Text("Error"),
                        content: Text(value.message.toString()),
                        actions: <Widget>[
                          CupertinoDialogAction(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            child: Text("Ok"),
                          ),
                        ],
                      ));
                    }

                  });

                },
                child: Text("Sign in"),
              ),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Don't have an account" ,style: TextStyle(color: Color(0xff707070) ,fontSize: 12),),
              SizedBox(width: 5),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return SignUp();
                }));
              }, child: Text("Sign up!" ,style: TextStyle(color: Color(0xffFF970B) ,fontSize: 14),),)
            ],
          )
        ],
      ),
    );
  }
}
