import 'package:dilivery_app_new/Screens/forgot_Verification_Password/update_Pass.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../../API/customer_forgotPass.dart';

class Varification extends StatelessWidget {
  // Varification({Key? key}) : super(key: key);

  String email;

  Varification({required this.email});

  TextEditingController one = TextEditingController();
  TextEditingController two = TextEditingController();
  TextEditingController three = TextEditingController();
  TextEditingController four = TextEditingController();

  @override
  Widget build(BuildContext context) {
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
          "Verification",
          style: TextStyle(fontSize: 20, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Code is sent to",
                  style: TextStyle(fontSize: 12, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 5),
                Text(
                  email,
                  style: TextStyle(fontSize: 14, color: Colors.black),
                )
              ],
            ),
            const SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.all(Radius.circular(32)),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 3,
                            offset: Offset(1.0, 2.0),
                          )
                        ]),
                    height: 80,
                    width: 55,
                    child: Center(
                      child: TextFormField(
                          cursorColor: Colors.black,
                          keyboardType: TextInputType.number,
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(1)
                          ],
                          decoration: InputDecoration(
                              contentPadding: EdgeInsets.all(10),
                              border: InputBorder.none),
                          style: TextStyle(fontSize: 30),
                          controller: one),
                    )),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                  child: Center(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none),
                      style: TextStyle(fontSize: 30),
                      controller: two,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                  child: Center(
                    child: TextFormField(
                      textAlign: TextAlign.center,
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none),
                      style: TextStyle(fontSize: 30),
                      controller: three,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Container(
                  decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(32)),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          blurRadius: 3,
                          offset: Offset(1.0, 2.0),
                        )
                      ]),
                  height: 80,
                  width: 55,
                  child: Center(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      keyboardType: TextInputType.number,
                      inputFormatters: [LengthLimitingTextInputFormatter(1)],
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.all(10),
                          border: InputBorder.none),
                      style: TextStyle(fontSize: 30),
                      controller: four,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: 35,
              width: 150,
              child: ElevatedButton(
                  onPressed: () async {
                    // print(one.text + two.text+three.text + four.text);
                    Map<String, dynamic> body = {
                      "email": email,
                      "code": one.text + two.text + three.text + four.text
                    };
                    ApiServiceForgotPassword.verifyCode(body).then((value) {
                      if (value.message == 'Code verified') {
                        print(value.message);
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (BuildContext context) {
                          return Password(
                            email: email,
                          );
                        }));
                      } else {
                        showDialog(
                          context: context,
                          builder: (BuildContext context) =>
                              CupertinoAlertDialog(
                            title: const Text("Error"),
                            content: value.error != null
                                ? Text(value.error.toString())
                                : Text(value.message.toString()),
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
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text(
                  "Didn't receive code?",
                  style: TextStyle(fontSize: 10, color: Color(0xffACACAC)),
                ),
                SizedBox(width: 2),
                Text(
                  "Try Again",
                  style: TextStyle(fontSize: 10, color: Color(0xffFD9F00)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
