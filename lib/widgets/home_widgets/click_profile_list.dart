import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/profile/person_page.dart';
import 'package:instagram_app/widgets/profile/play_page.dart';
import 'package:instagram_app/widgets/profile/profile_gridview_page.dart';
import 'package:instagram_app/widgets/profile/reels_page.dart';

class ClickProfile extends StatefulWidget {
  const ClickProfile({Key? key}) : super(key: key);

  @override
  _ClickProfileState createState() => _ClickProfileState();
}

class _ClickProfileState extends State<ClickProfile>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = new TabController(length: 4, vsync: this, initialIndex: 0)
      ..addListener(() {
        setState(() {});
      });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                margin: EdgeInsets.only( top: 20),
                height: 200,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(shape: BoxShape.circle),
                child: Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSey0zFY96Yu3FUJUVO-yeWmpjulfw5OMr_Ig&usqp=CAU',
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Text('7,345,2',
                      style: TextStyle(
                        fontSize: 17,
                      )),
                  Text(
                    'Followers',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Column(
                children: [
                  Text('7,345',
                      style: TextStyle(
                        fontSize: 17,
                      )),
                  Text('Requests',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
                ],
              ),
              Column(
                children: [
                  Text('765',
                      style: TextStyle(
                        fontSize: 17,
                      )),
                  Text(
                    'Follow',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                ],
              )
            ],
          ),
          Container(
            padding: EdgeInsets.only(left: 10, right: 10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Rose_Verma',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
                Text(
                  'Most of these photos are developed and scanned.',
                  style: TextStyle(fontSize: 17),
                ),
                Text(
                  'SF,CA',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                ),

                Text(
                  'www.studytuts.com',
                  style: TextStyle(
                      fontSize: 17,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 40,
                  width: 500,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black12),
                  ),
                  child: Center(
                      child: Text(
                    'Edit Profile',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  )),
                ),
                SizedBox(
                  height: 10,
                ),
                Divider(
                  thickness: 1,
                  color: Colors.black12,
                ),

                // Tab Bar
                TabBar(
                  controller: _tabController,
                  tabs: [
                    Icon(
                      Icons.grid_on_sharp,
                      color: Colors.black,
                      size: 30,
                    ),
                    Icon(
                      Icons.video_call,
                      color: Colors.black,
                      size: 30,
                    ),
                    Icon(
                      Icons.play_arrow_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                    Icon(
                      Icons.account_box_outlined,
                      color: Colors.black,
                      size: 30,
                    ),
                  ],
                  indicatorColor: Colors.blue,
                  unselectedLabelColor: Colors.grey,
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 200,
                  child: TabBarView(controller: _tabController, children: [
                    ProfileGrid(),
                    ReelsPage(),
                    PlayPage(),
                    PersonPage()
                  ]),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
