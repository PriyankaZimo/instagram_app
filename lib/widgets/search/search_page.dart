import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/home_widgets/click_image_page.dart';
import 'package:instagram_app/widgets/search/view_image.dart';

class Searchpage extends StatefulWidget {
  const Searchpage({Key? key}) : super(key: key);

  @override
  _SearchpageState createState() => _SearchpageState();
}

class _SearchpageState extends State<Searchpage> {
  List imag = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvc6Pxi0Yk8BbGI-5cNzLme-7dh4OIKfp1Rg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRjkGrK-Xq0tT8ht5wl3i4a6WCmi5ebRmyBgQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTFKIXFpHvo0IYwzEvH887z5ljw2aAgLEOVWA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRIIsG5nWH3U84ubgULF4SuDOKZOPgw6ICaCA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRkF0NxPhKiOHk8BoBh963-4UCYPqWqQUHV0Wrzdia4m1RfKBXqezcBw-BO7nHrcdxwFLU&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcThfxDD3HM64kGzM5iL2zotUpOzljSZuR9o4NDklCmENKo6w2BJYwMwEVXF3Ub-NUeZVRE&usqp=CAU',
    'https://images.pexels.com/photos/1580272/pexels-photo-1580272.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTs7_YDtWO_u4cKg-RC44Z4aGmdaWg7yw9JfcF2cVjJzidkrsPCeSDxqbafGzLIyOiuwgI&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQqT8dLN31eK5Yhc2NeNcVdybcqz2PIFwiXhctsGC6BQtYvYhE99zMHZcTMPzA7te-R6_k&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRU8yvsPGd8uUiJj8OYk3RMfEri96et8fU73A&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLf4qhstc40JXhnvfGFtSgK_wjwIPSDaI25Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xjdkwtxQl6t5M0CSq7LtXAcqsObVn3Jh-g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScOT-RdyXh3Rj66bIYic-F-47JLgOPnLe56A&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        child: GridView.builder(
            itemCount:imag.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              crossAxisSpacing: 2.0,
              mainAxisSpacing: 2.0,
            ),
            itemBuilder: (context, index) =>
                GestureDetector(onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>ImagePage(imag[index])));
                },
                  child: Container(
                    decoration: BoxDecoration(),
                    child: Hero(tag: imag[index],
                      child: Image.network(
                        imag[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                )));
  }
}
