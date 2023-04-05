import 'package:dilivery_app_new/Screens/SignIn_SignUp/SignIn.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({Key? key}) : super(key: key);

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(),
                TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Skip Tour",
                      style: TextStyle(color: Colors.black, fontSize: 13),
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Center(
              child: SvgPicture.asset("assets/ThirdLogo.svg",   height: MediaQuery.of(context).size.height / 3,),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Expanded(
              child: Stack(children: [
                SvgPicture.asset('assets/blue.svg'),
                Padding(
                  padding:
                  const EdgeInsets.only(left: 20, right: 20 ,top: 120),
                  child: Column(

                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        "Quick Deliver",
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      const SizedBox(
                          width: 290,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetu  elit, sed do eiusmod tempor",
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          )),
                      SizedBox(height: 70,),

                      Expanded(
                        child: Row(


                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            SvgPicture.asset("assets/scrollThird.svg"),
                            SizedBox(
                              width: 105,
                              child: ElevatedButton(
                                  style: ButtonStyle(
                                      shape: MaterialStateProperty.all(const RoundedRectangleBorder(
                                          borderRadius: BorderRadius.all(Radius.circular(10))
                                      )),
                                      backgroundColor: MaterialStateProperty.all(Colors.white)),
                                  onPressed: () {
                                    Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                                      return const SignIn();
                                    }));
                                  },
                                  child: const Text("Get Started" ,style: TextStyle(color: Color(0xffFF970B)),)),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ]))
        ],
      ),
    );
  }
}


