import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'chat_page.dart';

class MessageList extends StatefulWidget {
  const MessageList({Key? key}) : super(key: key);

  @override
  State<MessageList> createState() => _MessageListState();
}

class _MessageListState extends State<MessageList> {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8zDCrcoHHPni6vjEQ7rHvlwyqksQPd_XCAw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7apKkhk1Zihfp5fk5Px0G6JYNs4aXlgVYPA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbzXm6-aitNFiMzrPPp2SWC2x4S4iyzyaiXA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Y7Dx5iJg-U0FvtectDqxvvlkQ7fui8k91w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLVd_flHT1NOqWJj-kQPI0dSoqumj7gkbY6g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW5ATZO2MeoXp4Wq4RpmisvSOkqqvtqgwNxw&usqp=CAU',
  ];
  List texts = [
    'Rose_Verma',
    'Sahil_singh',
    'Niya_official',
    'Zara_official',
    'Rohan_singh',
    'official_Teena'
  ];
  List tex = [
    'Rose_Verma',
    'Sahil_singh',
    'Niya_official',
    'Zara_official',
    'Rohan_singh',
    'official_Teena',
    'Lara',
    'Brij_bala',
    'Zara_official',
    'Rohan_singh',
    'official_Teena',
    'Lara',
    'Brij_bala'
  ];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        child: ListView.builder(
          itemCount: tex.length,
          itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ChatPage()));
              },
              child: Row(
                children: [
                  Container(
                    clipBehavior: Clip.antiAlias,
                    height: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Image.network(
                      'https://i.pinimg.com/originals/b2/66/11/b2661166f71f78b7cc73a2d021aa27d0.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        tex[index],
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'Active today..',
                        style: TextStyle(fontSize: 15, color: Colors.grey),
                      ),
                    ],
                  ),
                  Spacer(),
                  Icon(Icons.camera_alt_outlined)
                ],
              )),
        ),
      ),
    );
  }
}
