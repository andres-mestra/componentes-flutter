import 'package:flutter/material.dart';

class ListViewBuilderScreen extends StatefulWidget {
  const ListViewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListViewBuilderScreen> createState() => _ListViewBuilderScreenState();
}

class _ListViewBuilderScreenState extends State<ListViewBuilderScreen> {
  final List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();

  //Cuando el state se crea por primera vez
  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      //print('${scrollController.position.pixels} , ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        add5();
      }
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(), //efecto fin lista de ios
          controller: scrollController,
          itemCount: imagesIds.length,
          itemBuilder: (context, index) {
            //https://source.unsplash.com/random/300×300
            return FadeInImage(
              width: double.infinity, //tome todo el ancho posible
              height: 300, // el height que va tener la imagen
              fit: BoxFit.cover, // Toma todo el espacio que tiene la imagen
              placeholder: const AssetImage('assets/jar-loading.gif'),
              image: NetworkImage(
                  'https://source.unsplash.com/500x300/?${imagesIds[index]}a'),
            );
          },
        ),
      ),
    );
  }
}
