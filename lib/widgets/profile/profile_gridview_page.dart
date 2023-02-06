import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileGrid extends StatelessWidget {
  ProfileGrid({Key? key}) : super(key: key);
  List imag = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_xjdkwtxQl6t5M0CSq7LtXAcqsObVn3Jh-g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM4oQuL69Kk6dCq9SyxtH3fa5zCR0L-RZXxw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSHly1Y3MqKBWU4x5qRcI5MF9Xg145bpwGYzg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP-wGqWKxy7wxo-JQg1enNQmcudS-f_aUWpQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS0x4e6AVO6qrn0DpGaV5-hJQWLEa4I0m9sGQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTwnB_P-Z5PJ3iK4jzkqg7stfT71uaXaOKQrA&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2ty6kEonjTrrLsY--sdGzcI9js9h60k-_wQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR36yFtrG4lyJjZJEwvZPxclh8bqEuTvqVgdg&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR7_rhaNFaTmb347b0ANlqTzf5VJW4fZVIG-g&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRCjWAysBmHOp7Budy-x1lHc4tEjVrhUfebuyTKeZxnB0d0kSajaIYu_o_0C77YkR9UCIw&usqp=CAU'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,width: double.infinity,
      child: GridView.builder(
          itemCount: 10,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            crossAxisSpacing: 2.0,
            mainAxisSpacing: 2.0,
          ),
          itemBuilder: (context, index) => Container(
                height: 500,
                decoration: BoxDecoration(),
                child: Image.network(
                  imag[index],
                  fit: BoxFit.cover,
                ),
              )),
    );
  }
}
