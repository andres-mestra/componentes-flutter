import 'package:flutter/material.dart';
import 'package:componentes/routers/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Center(
          child: Text('Componentes en Flutter'),
        ),
        elevation: 0,
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final option = menuOptions[index];
          return ListTile(
            leading: Icon(option.icon),
            title: Text(option.name),
            onTap: () {
              Navigator.pushNamed(context, option.route);
            },
          );
        },
        separatorBuilder: (_, __) => const Divider(),
        itemCount: menuOptions.length,
      ),
    );
  }
}
