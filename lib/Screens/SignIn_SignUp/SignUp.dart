import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../API/customerSIgnUp_SignIn.dart';
import '../../model/signUpModel.dart';
import 'SignIn.dart';

class SignUp extends StatefulWidget {
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  TextEditingController name=TextEditingController();
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
                "assets/Group 2750.svg",
                height: MediaQuery.of(context).size.height / 3.3,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Center(
            child: Text(
              "Sign Up",
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
                  controller: name,
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16),
                      hintText: "Name",
                      hintStyle: TextStyle(color: Color(0xffCCCACA)),
                      prefixIcon: SvgPicture.asset(
                        "assets/person.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                SizedBox(
                  height: 2.5,
                ),

                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16),
                      hintText: "Email",
                      hintStyle: TextStyle(color: Color(0xffCCCACA)),
                      prefixIcon: SvgPicture.asset(
                        "assets/Message.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      )),
                ),
                SizedBox(
                  height: 2.5,
                ),
                TextField(
                  decoration: InputDecoration(
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
                SizedBox(
                  height: 2.5,
                ),
                TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 16),
                      suffixIcon: SvgPicture.asset(
                        "assets/Iconly-Broken-Show.svg",
                        fit: BoxFit.scaleDown,
                      ),
                      hintText: "Confirm Password",
                      hintStyle: TextStyle(color: Color(0xffCCCACA)),
                      prefixIcon: SvgPicture.asset(
                        "assets/pass.svg",
                        height: 40,
                        width: 40,
                        fit: BoxFit.scaleDown,
                      )),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
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
                onPressed: () async{
                  Map<String, dynamic> body = {
                    "name": "name.text",
                    "email": "inzmam2@gmail.com",
                    "password": "mysecretpassword"
                  };
                  // Send the API request
                  await ApiServiceForSignup.signup(body).then((value) => {
                    if(value.message == "User created"){
                      Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                    return SignIn();
                  }))
                    }
                    else{
                    showDialog(
                    context: context,
                    builder: (BuildContext context) => CupertinoAlertDialog(
                      title: Text("Error"),
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
                  )
                    }
                  });


                },
                child: Text("Sign Up"),
              ),
            ),
          ),
          SizedBox(height: 50),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Already have an account" ,style: TextStyle(color: Color(0xff707070) ,fontSize: 12),),
              SizedBox(width: 5,),
              InkWell(onTap: (){
                Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  return SignIn();
                }));
              }, child: const Text("Sign In!" ,style: TextStyle(color: Color(0xffFF970B) ,fontSize: 14),),)
            ],
          )
        ],
      ),
    );
  }
}
