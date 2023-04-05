import 'package:dilivery_app_new/Screens/History/history.dart';
import 'package:flutter/material.dart';

class help_line extends StatelessWidget {
  const help_line({Key? key}) : super(key: key);

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
          "Helpline",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Package Type",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "Box",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Package Size",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "23m,21m",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Package Weight",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "21kg",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Departure Time",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "25:45 pm",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Delivery Time",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "15 min",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Distance",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "2 km",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Order Number",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "YU584F#00",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Rates",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "25\$",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Pick up ",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "Johar Town ",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 5),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Destination",
                  style: TextStyle(fontSize: 14, color: Color(0xff263238)),
                ),
                Text(
                  "Wapda Town",
                  style: TextStyle(fontSize: 12, color: Color(0xff263238)),
                ),
              ],
            ),
          ),
          SizedBox(height: 50),
          InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) { return history(); }));},
            child: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: [BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3,
                  offset: Offset(1.0,2.0)
                )]
              ),
              height: 50,
              width: 300,
              child: Center(child: Text("Generate Pdf",style: TextStyle(fontSize: 18,color: Color(0xff87D8EA),fontWeight: FontWeight.bold),)),

            ),
          )
        ],
      ),
    );
  }
}
