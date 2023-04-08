import 'package:dilivery_app_new/Screens/forgot_Verification_Password/verificationPass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../API/customer_forgotPass.dart';


class Forget_Password extends StatelessWidget {
  Forget_Password({Key? key}) : super(key: key);
TextEditingController  email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 70,
        backgroundColor: const Color(0xff85DAE9),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(45)),
        ),
        leading: Padding(
          padding: const EdgeInsets.only(left: 15),
          child: InkWell(
            onTap: () {
              Navigator.of(context).pop();
            },
            child: SvgPicture.asset(
              "assets/Iconly-Light-outline-Arrow - Left.svg",
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
        title: const Text(
          "Forget Password",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SvgPicture.asset("assets/Forgot password.svg"),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: email,
                  decoration: const InputDecoration(
                    hintText: "Enter your email",
                    hintStyle: TextStyle(fontSize: 14, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                width: 160,
                height: 35,
                child: ElevatedButton(
                    onPressed: () async {
                      // String Email = email;
                      ApiServiceForgotPassword.sendEmail(email.text).then((value){
                        if(value.message=='Code sent to email'){
                          print(value.message);
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return  Varification(email: email.text);
                              }));
                        }
                        else{
                          showDialog(
                            context: context,
                            builder: (BuildContext context) => CupertinoAlertDialog(
                              title: const Text("Error"),
                              content: value.error!=null?Text(value.error.toString()):Text(value.message.toString()),
                              actions: <Widget>[
                                CupertinoDialogAction(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: const Text("Ok"),
                                ),
                              ],
                            ),
                          );
                        }
                      });

                    },
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff85DAE9),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(32))),
                    child: const Text(
                      "Get Code",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
              )
            ],
          ),
        ),
      ),
    );
  }
}