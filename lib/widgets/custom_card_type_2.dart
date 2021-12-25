import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  const CustomCardType2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 10,
      child: Column(
        children: [
          FadeInImage(
            image: const NetworkImage(
                'https://source.unsplash.com/1600x900/?beach`'),
            placeholder: const AssetImage('assets/jar-loading.gif'),
          ),
        ],
      ),
    );
  }
}
