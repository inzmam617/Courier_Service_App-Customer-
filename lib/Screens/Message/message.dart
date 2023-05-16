import 'dart:async';
import 'dart:convert';
import 'package:intl/intl.dart';

import 'package:dilivery_app_new/Screens/Message/chatPage.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:socket_io_client/socket_io_client.dart' as IO;
import 'package:http/http.dart' as http;

import '../../model/lastMessage.dart';



class messages extends StatefulWidget {
  const messages({Key? key}) : super(key: key);

  @override
  State<messages> createState() => _messagesState();
}

class _messagesState extends State<messages> {
  //declaring socket
  String? id="";
  @override
  void initState() {
    super.initState();
    Timer.periodic(Duration(seconds: 3), (timer) {
      getActiveOrders();
    });
    setState(() {
      initialize();
    });
  }
  StreamController<LastMessages> _streamController = StreamController();
  @override
  void dispose() {
    // stop streaming when app close
    _streamController.close();
  }
  void initialize()async{
    final prefs = await SharedPreferences.getInstance();
    id= await prefs.getString('userId');
    setState(() {

    });
  }

  Future<void> getActiveOrders() async{
    LastMessages dataModel = await fetchLastMessages(id.toString());
    setState(() {

    });
    _streamController.sink.add(dataModel);
  }

  Future<LastMessages> fetchLastMessages(String senderId) async {
    final response = await http.get(
      Uri.parse('your urlreceivers/${id}'),
      headers: {"Content-Type": "application/json"},
    );

    if (response.statusCode == 200) {
      final transformedJson = transformLastMessagesResponse(response.body);
      final lastMessages = LastMessages.fromJson(transformedJson);
      return lastMessages;
    } else {
      throw Exception('Failed to load last messages');
    }
  }


  Map<String, dynamic> transformLastMessagesResponse(String responseBody) {
    final jsonMap = jsonDecode(responseBody);
    final List<Map<String, dynamic>> messagesList = [];

    for (final entry in jsonMap['lastMessages'].entries) {
      final receiverId = entry.key;
      final messageData = entry.value;
      final messageMap = {
        'receiverId': receiverId,
        '_id': messageData['_id'],
        'text': messageData['text'],
        'createdAt': messageData['createdAt'],
        'receiverName': messageData['receiverName'],
      };
      messagesList.add(messageMap);
    }

    return {'lastMessages': messagesList};
  }


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
          "Messages",
          style: TextStyle(fontSize: 25, color: Colors.black),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [

            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 3,
                              offset: Offset(1.0, 2.0))
                        ]),
                    height: 50,
                    width: 300,
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "What are you looking for ",
                          hintStyle:
                          TextStyle(fontSize: 10, color: Color(0xffCAC2C2)),
                          prefixIcon: SvgPicture.asset(
                            "assets/Search.red.svg",
                            fit: BoxFit.scaleDown,
                          )),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: InkWell(
                onTap: (){
                  // Navigator.of(context).push(MaterialPageRoute(builder: (BuildContext context) {
                  //   return ChatPage();
                  // }));
                },
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(15),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey,
                                blurRadius: 3,
                                offset: Offset(1.0, 2.0))
                          ]),
                      height: 60,
                      width: 60,
                      child: SvgPicture.asset(
                        "assets/Iconly-Broken-More Circle.svg",
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                    SizedBox(width: 20),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur",
                          style: TextStyle(fontSize: 13, color: Colors.black),
                        ),
                        SizedBox(height: 10),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            Text(
                              "April 23,2022",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff87D8EA)),
                            ),
                            SizedBox(width: 150),
                            Text(
                              "4:21 AM ",
                              style: TextStyle(
                                  fontSize: 10, color: Color(0xff87D8EA)),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
            StreamBuilder<LastMessages>(
              stream: _streamController.stream,
              builder: (context,snapdata){
                switch(snapdata.connectionState){
                  case ConnectionState.waiting: return Center(child: CircularProgressIndicator(),);
                  default: if(snapdata.hasError){
                    return Text('Please Wait....');
                  }else{
                    final chats = snapdata.data!.messages;
                    chats.sort((a, b) => b.createdAt!.compareTo(a.createdAt!));
                    return Expanded(
                        child: ListView.builder(
                            itemCount: chats.length,
                            itemBuilder: (context, index){
                              final timestamp = chats[index].createdAt;
                              final dateTime = DateTime.fromMillisecondsSinceEpoch(timestamp!);
                              final formattedDateTime = DateFormat('MMM dd, yyyy hh:mm a').format(dateTime);
                              return  Padding(
                                padding: const EdgeInsets.only(left: 20),
                                child: InkWell(
                                  onTap: (){
                                    Navigator.of(context)
                                        .push(MaterialPageRoute(builder: (BuildContext context) {
                                      return ChatScreen(myUserId: id.toString(),otherUserId: "${chats[index].receiverId}", name:"${chats[index].receiverName}" ,);
                                    }));
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        decoration: BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.circular(15),
                                            boxShadow: [
                                              BoxShadow(
                                                  color: Colors.grey,
                                                  blurRadius: 3,
                                                  offset: Offset(1.0, 2.0))
                                            ]),
                                        height: 60,
                                        width: 60,
                                        child: SvgPicture.asset(
                                          "assets/Iconly-Broken-More Circle.svg",
                                          fit: BoxFit.scaleDown,
                                        ),
                                      ),
                                      SizedBox(width: 20),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            "${chats[index].receiverName}",

                                            style: TextStyle(fontSize: 13, color: Colors.black),
                                          ),
                                          SizedBox(height: 10),
                                          Text(
                                            "${chats[index].text}",
                                            style: TextStyle(fontSize: 13, color: Colors.black),
                                          ),
                                          SizedBox(height: 10),
                                          Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                            children:  [
                                              Text(
                                                "$formattedDateTime",

                                                style: const TextStyle(
                                                    fontSize: 10, color: Color(0xff87D8EA)),
                                              ),
                                              SizedBox(width: 150),
                                              Text(
                                                "4:21 AM ",
                                                style: TextStyle(
                                                    fontSize: 10, color: Color(0xff87D8EA)),
                                              ),
                                            ],
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              );

                              //   Padding(
                              //   padding: const EdgeInsets.symmetric(vertical: 10),
                              //   child: InkWell(
                              //     onTap: () async{
                              //       Navigator.of(context)
                              //           .push(MaterialPageRoute(builder: (BuildContext context) {
                              //         return ChatScreen(myUserId: id.toString(),otherUserId: "${chats[index].receiverId}", name:"${chats[index].receiverName}" ,);
                              //       }));
                              //     },
                              //     child: Container(
                              //       decoration: BoxDecoration(color: Colors.white, boxShadow: [
                              //         BoxShadow(
                              //             color: Colors.grey, blurRadius: 3, offset: Offset(1.0, 2.0))
                              //       ]),
                              //       height: 85,
                              //       width: MediaQuery.of(context).size.width,
                              //       child: Padding(
                              //         padding: const EdgeInsets.symmetric(horizontal: 15),
                              //         child: Column(
                              //           children: [
                              //             SizedBox(height: 3),
                              //             Align(
                              //               alignment: Alignment.topRight,
                              //               child: Text(
                              //                 "${formattedDateTime}",
                              //                 style:
                              //                 TextStyle(fontSize: 12, color: Color(0xff3D3D3D)),
                              //               ),
                              //             ),
                              //             Row(
                              //               children: [
                              //                 Container(
                              //                   decoration: BoxDecoration(
                              //                       image: DecorationImage(
                              //                           fit: BoxFit.cover,
                              //                           image: AssetImage("assets/pic.jpg")),
                              //                       borderRadius: BorderRadius.circular(100),
                              //                       boxShadow: [
                              //                         BoxShadow(
                              //                           color: Color(0xff2F62BB),
                              //                           blurRadius: 2,
                              //                         )
                              //                       ]),
                              //                   height: 50,
                              //                   width: 50,
                              //                 ),
                              //                 SizedBox(width: 10),
                              //                 Column(
                              //                   crossAxisAlignment: CrossAxisAlignment.start,
                              //                   children: [
                              //                     Text(
                              //                       "${chats[index].receiverName}",
                              //                       style: TextStyle(
                              //                           fontSize: 16, color: Color(0xff3D3D3D)),
                              //                     ),
                              //                     Text(
                              //                       "${chats[index].text}",
                              //                       style:
                              //                       TextStyle(fontSize: 12, color: Colors.black),
                              //                     )
                              //                   ],
                              //                 )
                              //               ],
                              //             )
                              //           ],
                              //         ),
                              //       ),
                              //     ),
                              //   ),
                              // );
                            })
                    );
                  }
                }
              },
            ),


          ],
        ),
      ),
    );
  }
}
