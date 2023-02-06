import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/add_page/add_page.dart';
import 'package:instagram_app/widgets/camera_page.dart';
import 'package:instagram_app/widgets/favorites/favorite_page.dart';

import 'package:instagram_app/widgets/home_page.dart';
import 'package:instagram_app/widgets/home_widgets/list_page.dart';
import 'package:instagram_app/widgets/home_widgets/message_page.dart';

import 'package:instagram_app/widgets/profile/profile_page.dart';

import 'package:instagram_app/widgets/search/search_page.dart';

class InstaHome extends StatefulWidget {
  const InstaHome({Key? key}) : super(key: key);

  @override
  State<InstaHome> createState() => _InstaHomeState();
}

class _InstaHomeState extends State<InstaHome> {
  int pos = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => CameraPage()));
          },
          child: Icon(
            Icons.camera_alt_outlined,
            color: Colors.black,
            size: 30,
          ),
        ),
        title: Image.network(
            'https://assets.website-files.com/5ee732bebd9839b494ff27cd/5f00ff5ae68abe264c4a109b_Screen%20Shot%202020-07-05%20at%2012.09.44%20AM.png',
        scale: 5,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MessagePage()));
            },
            child: Icon(
              Icons.near_me_outlined,
              color: Colors.black,
              size: 30,
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Expanded(child: getMyPage()),
          Container(
              height: 70,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                      topLeft: Radius.circular(20)),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                    BoxShadow(
                        color: Colors.black12,
                        blurRadius: 10,
                        offset: Offset(0, 5)),
                  ]),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pos = 0;
                      });
                    },
                    icon: Icon(
                      Icons.home,
                      size: 30,
                      color: pos == 0 ? Colors.blue : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pos = 1;
                      });
                    },
                    icon: Icon(
                      Icons.search,
                      size: 30,
                      color: pos == 1 ? Colors.blue : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pos = 2;
                      });
                    },
                    icon: Icon(
                      Icons.add_box_outlined,
                      size: 30,
                      color: pos == 2 ? Colors.blue : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pos = 3;
                      });
                    },
                    icon: Icon(
                      Icons.favorite_border_outlined,
                      size: 30,
                      color: pos == 3 ? Colors.blue : Colors.black,
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        pos = 4;
                      });
                    },
                    icon: Icon(
                      Icons.person,
                      size: 30,
                      color: pos == 4 ? Colors.blue : Colors.black,
                    ),
                  ),
                ],
              ))
        ],
      ),
    );
  }

  getMyPage() {
    switch (pos) {
      case 0:
        return ListView(children: [
          HomePage(),
          SizedBox(
            height: 10,
          ),
          ListPage()
        ]);
      case 1:
        return Searchpage();
      case 2:
        return AddPage();
      case 3:
        return FavoritePage();
      case 4:
        return ProfilePage();
    }
  }
}
