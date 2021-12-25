import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Andres Mestra'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
              child: const Text('AM'),
              backgroundColor: Colors.indigo[900],
            ),
          ),
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 110,
          backgroundImage: NetworkImage(
              'https://res.cloudinary.com/dp7wliirv/image/upload/v1627908653/miblog/nsxyoyqxy64w9ce4peci.jpg'),
        ),
      ),
    );
  }
}
