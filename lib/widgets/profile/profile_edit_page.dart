import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/profile/person_page.dart';
import 'package:instagram_app/widgets/profile/play_page.dart';
import 'package:instagram_app/widgets/profile/profile_gridview_page.dart';
import 'package:instagram_app/widgets/profile/reels_page.dart';

import 'open_profile_page.dart';

class ProfileEdit extends StatefulWidget {
  @override
  State<ProfileEdit> createState() => _ProfileEditState();
}

class _ProfileEditState extends State<ProfileEdit> with SingleTickerProviderStateMixin {
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
    return SingleChildScrollView(
      child: Container(
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
            SizedBox(
              height: 10,
            ),
            Text(
              'www.studytuts.com',
              style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            SizedBox(
              height: 20,
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
              child: TabBarView(
                  controller: _tabController, children: [
                ProfileGrid(),
                ReelsPage(),
                PlayPage(),
                PersonPage()
              ]),
            )
          ],
        ),
      ),
    );
  }
}
