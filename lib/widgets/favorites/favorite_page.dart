import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/favorites/fav_list_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 10),
        height: MediaQuery.of(context).size.height,

        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(
            children: [
              Container(
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(shape: BoxShape.circle),
                  child: Image.network(
                      'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrutZP2ETTNAECOWVOqtYxiqushnwu7baAOQ&usqp=CAU')),
              SizedBox(
                width: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Folow requests',
                    style: TextStyle(fontSize: 18),
                  ),
                  Text('View or ignore requests',
                      style: TextStyle(fontSize: 15, color: Colors.grey)),
                ],
              ),
            ],
          ),
          Text('This Week', style: TextStyle(fontSize: 15, color: Colors.black)),
          FavoritList()

        ]),
      ),
    );
  }
}
