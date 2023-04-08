
import 'package:dilivery_app_new/Screens/SignIn_SignUp/SignIn.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../API/customer_forgotPass.dart';

class Password extends StatelessWidget {
  // const Password({Key? key}) : super(key: key);

  String email;
  Password({required this.email});
  @override
  Widget build(BuildContext context) {
    TextEditingController pass = TextEditingController();
    TextEditingController passv = TextEditingController();
    return Scaffold(
      appBar: AppBar(

        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        // leading: InkWell(
        //   onTap: () {
        //     Navigator.of(context).pop();
        //   },
        //   child: SvgPicture.asset(
        //     "assets/Map Icon.svg",
        //     fit: BoxFit.scaleDown,
        //   ),
        // ),
        title: const Text(
          "Password",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 50),
              SvgPicture.asset("assets/Developer.svg"),
              const SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: pass,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Your new Password",
                    hintStyle: const TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  controller: passv,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.only(top: 17),
                    prefixIcon: SvgPicture.asset(
                      "assets/Lock.svg",
                      fit: BoxFit.scaleDown,
                    ),
                    hintText: "Confirm Password",
                    hintStyle: const TextStyle(fontSize: 12, color: Color(0xffCCCACA)),
                  ),
                ),
              ),
              const SizedBox(height: 50),
              SizedBox(
                height: 35,
                width: 150,
                child: ElevatedButton(
                    onPressed: () async{
                      Map<String, dynamic> body = {
                        "email":email,
                        "newPassword":pass.text
                      };
                      ApiServiceForgotPassword.updatePass(body).then((value){
                        if(value.message=='Password updated'){
                          Navigator.of(context).push(
                              MaterialPageRoute(builder: (BuildContext context) {
                                return SignIn();
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
                      "Done",
                      style: TextStyle(fontSize: 12, color: Colors.white),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}