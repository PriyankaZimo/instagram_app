import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/home_widgets/click_image_page.dart';
import 'package:instagram_app/widgets/home_widgets/click_profile_list.dart';
import 'package:instagram_app/widgets/profile/profile_page.dart';
import 'package:instagram_app/widgets/search/view_image.dart';
import 'package:like_button/like_button.dart';

class ListPage extends StatefulWidget {
  const ListPage({Key? key}) : super(key: key);

  @override
  _ListPageState createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  List img = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTdBW3Vnj1RaMKRIahsTTkppyrh0vjzJ7TDw&usqp=CAU',
    'https://us.123rf.com/450wm/andersonrise/andersonrise1601/andersonrise160100278/50515592-portrait-of-a-charming-brunette-little-girl-isolated-on-gray-background.jpg?ver=6',
    'https://t4.ftcdn.net/jpg/02/45/26/41/360_F_245264137_3qCXXPpr5RVm93gQecjCRL7OOAU5ELF8.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWWgSbdyirlYnN4zVIJzyxRMr5g1TO6hGShA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB4IGGWvFrBJ30VQsahhdXfsjTsgNH7sZL0w&usqp=CAU'
  ];
  List text = [
    'Rose_verma\nhimachal',
    'Niya_Pathania\nPathankot',
    'Sania_Mirza\nBhatwan',
    'Somal',
    'Neena',
    'Meena'
  ];
  List imag = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRTdBW3Vnj1RaMKRIahsTTkppyrh0vjzJ7TDw&usqp=CAU',
    'https://us.123rf.com/450wm/andersonrise/andersonrise1601/andersonrise160100278/50515592-portrait-of-a-charming-brunette-little-girl-isolated-on-gray-background.jpg?ver=6',
    'https://t4.ftcdn.net/jpg/02/45/26/41/360_F_245264137_3qCXXPpr5RVm93gQecjCRL7OOAU5ELF8.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWWgSbdyirlYnN4zVIJzyxRMr5g1TO6hGShA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSB4IGGWvFrBJ30VQsahhdXfsjTsgNH7sZL0w&usqp=CAU'
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: 100,
      child: ListView.builder(
          itemCount: 5,
          itemBuilder: (context, index) => Container(
                margin: EdgeInsets.only(bottom: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        ClickImagePage(imag[index],index)));
                          },
                          child: Container(
                            clipBehavior: Clip.antiAlias,
                            height: 60,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.grey),
                            child: Hero(tag: index,
                              child: Image.network(
                                imag[index],
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => ClickProfile()));
                          },
                          child: Text(
                            text[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Icon(Icons.more_horiz),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      height: 350,
                      decoration: BoxDecoration(),
                      child: Image.network(
                        img[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 20,
                        ),
                        LikeButton(
                          likeCount: 667,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.circle_outlined,
                          size: 30,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.near_me_outlined,
                          size: 30,
                        ),
                        Spacer(),
                        Icon(
                          Icons.bookmark_outline,
                          size: 30,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.only(
                        left: 20,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '_official_rose',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold),
                          ),
                          Row(
                            children: [
                              Text(
                                'view all 5 comments..',
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 15),
                              ),
                              Icon(
                                Icons.emoji_emotions,
                                color: Colors.orange,
                                size: 30,
                              ),
                              Icon(
                                Icons.favorite,
                                color: Colors.red,
                                size: 30,
                              )
                            ],
                          ),
                          Text(
                            '1 hour ago..',
                            style: TextStyle(color: Colors.grey, fontSize: 14),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )),
    );
  }
}
