import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatelessWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          itemCount: 20,
          itemBuilder: (context, index) {
            //https://source.unsplash.com/random/300×300
            return FadeInImage(
              width: double.infinity, //tome todo el ancho posible
              height: 300, // el height que va tener la imagen
              fit: BoxFit.cover, // Toma todo el espacio que tiene la imagen
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://source.unsplash.com/500x300/?${index + 1}a'),
            );
          },
        ),
      ),
    );
  }
}
