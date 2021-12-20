import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = ['Uno', 'Dos', 'Tres', 'Cuatro', 'Cinco'];

  HomePageTemp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItems(),
        children: _crearItemsCorta(),
      ),
    );
  }

  List<Widget> _crearItems() {
    List<Widget> lista = [];
    for (var opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
      );

      lista
        ..add(tempWidget)
        ..add(const Divider());
    }
    return lista;
  }

  List<Widget> _crearItemsCorta() {
    return opciones
        .map(
          (item) => Column(
            children: [
              ListTile(
                title: Text(item),
                subtitle: const Text('Cualquier cosa'),
                leading: const Icon(Icons.account_box),
                trailing: const Icon(Icons.arrow_right),
                onTap: () {},
              ),
              const Divider(),
            ],
          ),
        )
        .toList();
  }
}
