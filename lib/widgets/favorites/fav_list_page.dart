import 'package:flutter/material.dart';

class FavoritList extends StatefulWidget {
  const FavoritList({Key? key}) : super(key: key);

  @override
  State<FavoritList> createState() => _FavoritListState();
}

class _FavoritListState extends State<FavoritList> {
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS8zDCrcoHHPni6vjEQ7rHvlwyqksQPd_XCAw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS7apKkhk1Zihfp5fk5Px0G6JYNs4aXlgVYPA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRbzXm6-aitNFiMzrPPp2SWC2x4S4iyzyaiXA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ8Y7Dx5iJg-U0FvtectDqxvvlkQ7fui8k91w&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSLVd_flHT1NOqWJj-kQPI0dSoqumj7gkbY6g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW5ATZO2MeoXp4Wq4RpmisvSOkqqvtqgwNxw&usqp=CAU',
  ];
  List texts=['Rose_Verma','Sahil_singh','Niya_official','Zara_official','Rohan_singh','official_Teena'];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          scrollDirection: Axis.vertical,
          itemCount: images.length,
          itemBuilder: (context, index) => Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.all(10),
                      height: 70,
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                      ),
                      child: Image.network(
                        images[index],
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          texts[index],
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '659 requested\nto follow you',
                          style: TextStyle(fontSize: 13),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(child: Text('Confirm')),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Container(
                      height: 30,
                      width: 60,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          border: Border.all(color: Colors.black12)),
                      child: Center(child: Text('Delete')),
                    )
                  ],
                ),
              )),
    );
  }
}
