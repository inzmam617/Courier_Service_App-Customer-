import 'package:flutter/material.dart';

class track_order_two extends StatelessWidget {
  const track_order_two({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
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
          "Track Order",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Image.asset(
              "assets/mapping.png.jpg",height: MediaQuery.of(context).size.height,fit: BoxFit.cover,
            ),
            Column(children: [SizedBox(height: 30),
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(32),
                    boxShadow: [BoxShadow(
                      color: Colors.grey,
                      blurRadius: 3,
                      offset: Offset(1.0,2.0)
                    )]
                  ),
                  height: 50,
                  width: 300,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: TextFormField(decoration: InputDecoration(
                      hintText: "Track your order",
                      hintStyle: TextStyle(fontSize: 12,color: Colors.black),
                      border: InputBorder.none
                    ),),
                  )
                ),
              )
            ],)
          ],
        ),
      ),
    );
  }
}
