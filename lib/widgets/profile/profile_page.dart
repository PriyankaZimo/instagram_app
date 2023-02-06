import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/profile/profile_edit_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage( {Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Container(
                clipBehavior: Clip.antiAlias,
                height: 100,
                width: 150,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: Image.network(
                    'https://t3.ftcdn.net/jpg/02/88/01/98/360_F_288019837_M5b7qGaXpmMfWOSgso53PWQu9rIdg5et.jpg'),
              ),
              SizedBox(
                width: 20,
              ),
              Column(
                children: [
                  Text(
                    '1,487',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text('Posts',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                  
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    '876',
                    style: TextStyle(fontSize:17, fontWeight: FontWeight.bold),
                  ),
                Text('Followers',style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold),)
                ],
              ),
              SizedBox(
                width: 10,
              ),
              Column(
                children: [
                  Text(
                    '1,387',
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                 Text('follow',style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),)
                ],
              )
            ],
          ), SizedBox(height:20,),
          ProfileEdit()

        ],
      ),
    );
  }
}
