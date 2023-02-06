import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  CameraPage({
    Key? key,
  }) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List icons = [
    Icons.font_download,
    Icons.filter_b_and_w_rounded,
    Icons.expand_more
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        title: Icon(
          Icons.flash_off,
          size: 30,
        ),
        actions: [Icon(Icons.close_sharp)],
      ),
      body: Container(
        child: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSIVTSnD96iV5Sl3tp0ejt4_MVWnjmubVTPDg&usqp=CAU'),
                    fit: BoxFit.fill),
              ),
            ),
            Positioned(
              left: 20,
              bottom: 50,
              right: 20,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(
                    Icons.image,
                    color: Colors.green[50],
                    size: 40,
                  ),
                  Container(
                    child: Icon(
                      Icons.flash_on,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                  Container(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                    height: 60,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        border: Border.all(
                            width: 7, color: Colors.white.withOpacity(.5))),
                  ),
                  Icon(
                    Icons.cached,
                    color: Colors.white,
                    size: 30,
                  ),
                  Container(
                    child: Icon(
                      Icons.tag_faces,
                      color: Colors.white,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 500),
              child: Container(
                  height: 150,
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Container(
                            clipBehavior: Clip.antiAlias,
                            margin: EdgeInsets.all(5),
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                            ),
                            child: Image.network(
                              'https://i.pinimg.com/originals/b2/66/11/b2661166f71f78b7cc73a2d021aa27d0.png',
                              fit: BoxFit.cover,
                            ),
                          ))),
            ),
            // Container(
            //     margin: EdgeInsets.only(left: 10, top: 200),
            //     height: 200,
            //     width: 70,
            //     child: ListView.builder(
            //         itemCount: 3,
            //         scrollDirection: Axis.vertical,
            //         itemBuilder: (context, index) => Container(
            //             margin: EdgeInsets.all(10),
            //             height: 50,
            //             decoration: BoxDecoration(),
            //             child: Icon(
            //               icons[index],
            //               color: Colors.white,
            //               size: 30,
            //             )))),
            // Padding(
            //   padding: const EdgeInsets.only(top: 680),
            //   child: Container(
            //     height: 100,
            //     decoration: BoxDecoration(color: Colors.black),
            //     child: Container(
            //       height: 100,
            //       child: ListView.builder(
            //           itemCount: 5,
            //           scrollDirection: Axis.horizontal,
            //           itemBuilder: (context, index) => Container(
            //                 height: 70,
            //                 color: Colors.red,
            //               )),
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
