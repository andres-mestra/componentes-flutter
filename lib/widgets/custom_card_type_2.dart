import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: const [
          FadeInImage(
            image: NetworkImage('https://source.unsplash.com/1600x900/?beach`'),
            placeholder: AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 170,
            fit: BoxFit.cover,
            fadeInDuration: Duration(milliseconds: 300),
          ),
        ],
      ),
    );
  }
}
