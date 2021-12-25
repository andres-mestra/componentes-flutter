import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(
              Icons.photo_album_outlined,
              color: AppTheme.primary,
            ),
            title: Text('Lizard'),
            subtitle: Text(
                'Lizards are a widespread group of squamate reptiles, with over 6,000 species, ranging across all continents except Antarctica'),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(
                  onPressed: () {},
                  child: const Text('Cancel'),
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text('Ok'),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
