import 'package:flutter/material.dart';

class ChatInputPage extends StatelessWidget {
  ChatInputPage({Key? key}) : super(key: key);
  List images = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSW5ATZO2MeoXp4Wq4RpmisvSOkqqvtqgwNxw&usqp=CAU',
    'https://i.pinimg.com/originals/b2/66/11/b2661166f71f78b7cc73a2d021aa27d0.png',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM4oQuL69Kk6dCq9SyxtH3fa5zCR0L-RZXxw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHly1Y3MqKBWU4x5qRcI5MF9Xg145bpwGYzg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP-wGqWKxy7wxo-JQg1enNQmcudS-f_aUWpQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0x4e6AVO6qrn0DpGaV5-hJQWLEa4I0m9sGQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwnB_P-Z5PJ3iK4jzkqg7stfT71uaXaOKQrA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ty6kEonjTrrLsY--sdGzcI9js9h60k-_wQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR36yFtrG4lyJjZJEwvZPxclh8bqEuTvqVgdg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7_rhaNFaTmb347b0ANlqTzf5VJW4fZVIG-g&usqp=CAU',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.only(left: 10, right: 10),
      child: TextFormField(
        obscureText: false,
        autofocus: false,
        decoration: InputDecoration(
          hintText: 'Enter',
          prefixIcon: Icon(
            Icons.camera_alt_rounded,
            color: Colors.pink,
            size: 35,
          ),
          suffixIcon: Container(
            padding: EdgeInsets.only(right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.mic,
                  color: Colors.pink,
                  size: 30,
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Column(
                              children: [
                                Text(
                                  'Gallery',
                                  style: TextStyle(fontSize: 25),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                                Container(
                                  height: 350,
                                  color: Colors.white,
                                  child: Container(
                                    height: 60,
                                    child: GridView.builder(
                                        itemCount: images.length,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisSpacing: 3,
                                                mainAxisSpacing: 4,
                                                crossAxisCount: 3),
                                        itemBuilder: (context, index) =>
                                            Container(
                                              height: 200,
                                              child: Image.network(
                                                images[index],
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                  ),
                                ),
                              ],
                            ));
                  },
                  child: Icon(
                    Icons.image,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    showModalBottomSheet(
                        context: context,
                        builder: (context) => Column(
                              children: [
                                Text(
                                  'Emojis',
                                  style: TextStyle(fontSize: 25),
                                ),
                                Container(
                                  height: 7,
                                  width: 80,
                                  decoration: BoxDecoration(
                                      color: Colors.grey,
                                      borderRadius: BorderRadius.circular(20)),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Container(
                                  height: 350,
                                  color: Colors.white,
                                  child: Container(
                                    height: 80,
                                    child: GridView.builder(
                                        itemCount: images.length,
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                                crossAxisSpacing: 3,
                                                mainAxisSpacing: 4,
                                                crossAxisCount: 3),
                                        itemBuilder: (context, index) =>
                                            Container(
                                              height: 300,
                                              child: Image.network(
                                                images[index],
                                                fit: BoxFit.cover,
                                              ),
                                            )),
                                  ),
                                ),
                              ],
                            ));
                  },
                  child: Icon(
                    Icons.emoji_emotions,
                    color: Colors.pink,
                    size: 30,
                  ),
                ),
              ],
            ),
          ),
          fillColor: Colors.pink[50],
          filled: true,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(20),
          ),
        ),
      ),
    );
  }
}
