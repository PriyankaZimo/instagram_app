import 'package:flutter/material.dart';

class ClickImagePage extends StatefulWidget {
 String img;
int index;
 ClickImagePage(this.img, this. index,);

  @override
  State<ClickImagePage> createState() => _ClickImagePageState(img,index);
}

class _ClickImagePageState extends State<ClickImagePage> {
  String img;
  int index;
  _ClickImagePageState(this.img,this.index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
    
      body: Container(
           padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(
                    img,),fit: BoxFit.fill)),
      ),
    );
  }
}
