import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram_app/widgets/home_widgets/story_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List imag = [
    'https://i.pinimg.com/originals/da/4e/b8/da4eb84d3884b716057b57858dc880a3.gif',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS4RX36I0nRSg_iy36DvSdWwXXu98B7SaagDRqYBYoDYzJtwcAf5nTax7NXxTyWPKRkT5U&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrA1Gu6ltWlgccX0WLz6VWQ2m96hyy94fC206RI9MS2lVDw04RYIA6peF3NB5kfbFKOoE&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa3S5g7tudeJ1mu_gm0xYTX8vag5xmVv7T9r-kskUNy6PwxU2DncS5mnmaYnStXa9su4M&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa3S5g7tudeJ1mu_gm0xYTX8vag5xmVv7T9r-kskUNy6PwxU2DncS5mnmaYnStXa9su4M&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRa3S5g7tudeJ1mu_gm0xYTX8vag5xmVv7T9r-kskUNy6PwxU2DncS5mnmaYnStXa9su4M&usqp=CAU',
  ];
  List text = ['Rose_verma', 'Tina_singh', 'Reena', 'Rakhi', 'Brij', 'sfdFGF'];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 110,
      color: Colors.white,
      child: Row(
        children: [
          Column(
            children: [
              Container(
                height: 70,
                clipBehavior: Clip.antiAlias,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child:Image.network(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrA1Gu6ltWlgccX0WLz6VWQ2m96hyy94fC206RI9MS2lVDw04RYIA6peF3NB5kfbFKOoE&usqp=CAU',
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                'Your_story',
                style: TextStyle(fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
              child: ListView.builder(
                  itemCount: 6,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => Column(
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(imag[index],index)));
                            },
                            child: Container(
                              height: 70,
                              decoration: BoxDecoration(
                                  border:
                                      Border.all(color: Colors.red, width: 3),
                                  shape: BoxShape.circle),
                              child: Container(
                                clipBehavior: Clip.antiAlias,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Hero(tag:index,
                                  child: Image.network(
                                    imag[index],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            text[index],
                            style: TextStyle(fontWeight: FontWeight.bold),
                          )
                        ],
                      ))),
        ],
      ),
    );
  }
}
