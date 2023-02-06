import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_input_page.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({Key? key}) : super(key: key);

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List text = [
    'hlo',
    'Ram.',
    'Lorem ipsum, or lipsum as it is\n sometimes known, is dummy text..',
    'Lorem ipsum, or lipsum as it is\n sometimes known, is dummy text\nused in laying out print, graphic\nor web designs.',
    'Lorem ipsum, or lipsum as it is\n sometimes known, is dummy text\nused in laying out print, graphic',
    'Lorem ipsum, or lipsum as it is\n sometimes known, is dummy text\nused in laying out print, graphic\nor web designs.',
    'sd',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8zDCrcoHHPni6vjEQ7rHvlwyqksQPd_XCAw&usqp=CAU'),
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                'Stephen_houkin',
                style: TextStyle(color: Colors.black),
              ),
              Icon(
                Icons.call,
                color: Colors.black,
              ),
              Icon(
                Icons.video_call,
                color: Colors.black,
              )
            ],
          ),
        ),
        body: Column(
          children: [
            Expanded(
                child: Padding(
              padding: EdgeInsets.only(left: 20, top: 30, right: 20),
              child: ListView.builder(
                  itemCount: text.length,
                  itemBuilder: (context, index) => Row(
                        mainAxisAlignment: index % 2 == 0
                            ? MainAxisAlignment.end
                            : MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            padding: EdgeInsets.all(10),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20),
                                    bottomLeft: Radius.circular(20)),
                                color: index % 2 == 0
                                    ? Colors.pink
                                    : Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.black12,
                                      blurRadius: 10,
                                      offset: Offset(0, 5))
                                ]),
                            child: Text(
                              text[index],
                              style: TextStyle(
                                fontSize: 17,
                                color: index % 2 == 0
                                    ? Colors.white
                                    : Colors.black,
                              ),
                            ),
                          ),
                        ],
                      )),
            )),
            ChatInputPage()
          ],
        ));
  }
}
