import 'package:componentes/models/models.dart';
import 'package:flutter/material.dart';
import 'package:componentes/widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  static final List<ImageCard> images = [
    ImageCard(type: 'people-walking', title: 'Live'),
    ImageCard(type: 'beach', title: 'Paradise'),
    ImageCard(type: 'city'),
  ];

  const CardScreen({Key? key}) : super(key: key);

  List<Widget> listCardType2() {
    return images
        .map(
          (image) => Column(
            children: [
              CustomCardType2(
                type: image.type,
                title: image.title,
              ),
              const SizedBox(height: 10),
            ],
          ),
        )
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 10,
        ),
        children: [
          const CustomCardType1(),
          const SizedBox(height: 10),
          ...listCardType2()
        ],
      ),
    );
  }
}
