import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class StoryPage extends StatefulWidget {
String imag;
int index;

StoryPage(this.imag,this. index);

  @override
  State<StoryPage> createState() => _StoryPageState(imag,index);
}

class _StoryPageState extends State<StoryPage> {
  String imag;
int index;
  _StoryPageState(this.imag,this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
          children: [
        Padding(
            padding: EdgeInsets.only(top: 20),
            child: BackButton(
              color: Colors.red,
            )),
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
            image: NetworkImage(
                imag,),
            fit: BoxFit.fill,
          )),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 40, left: 10),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.black,
                    image: DecorationImage(
                        image: NetworkImage(
                            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_-gr9Ex7_Aoy5I1fUHenN9kECAaGudeN4bA&usqp=CAU'),
                        fit: BoxFit.fill)),
              ),
            ),
            Text('Rose_Verma_',style: TextStyle(color: Colors.white,fontSize: 20),),
            Spacer(),
            Icon(Icons.more_vert,color: Colors.white,size: 30,)

          ],
        ),
        Positioned(
          bottom:10,left: 20,
          child: Row(
            children: [
              Container(
                height: 80,width:300,
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Send Message..',
                    hintStyle:TextStyle(color: Colors.white,fontSize: 20),
                    prefixIcon: Icon(Icons.camera_alt_rounded,color: Colors.white,size: 30,),
                    fillColor: Colors.black12,
                    filled: true,
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                ),
              ),SizedBox(width: 10,),
              Icon(Icons.near_me_outlined,size: 40,color: Colors.white,)
            ],
          ),
        )
      ]),
    );
  }
}
