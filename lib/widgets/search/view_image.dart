import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagePage extends StatefulWidget {
  String imag;


  ImagePage(this.imag);

  @override
  _ImagePageState createState() => _ImagePageState(imag);
}

class _ImagePageState extends State<ImagePage> {
  String imag;
  _ImagePageState(this. imag);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
        decoration: BoxDecoration(
            color: Colors.red,
            image: DecorationImage(
                image: NetworkImage(
                    imag),fit: BoxFit.fill
            )),
      ),
    );
  }
}
