import 'package:flutter/material.dart';
import 'package:componentes/theme/app_theme.dart';

class CustomCardType2 extends StatelessWidget {
  final String type;
  final String? title;
  const CustomCardType2({Key? key, required this.type, this.title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 30,
      shadowColor: AppTheme.primary.withOpacity(0.5),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(18),
      ),
      child: Column(
        children: [
          FadeInImage(
            image: NetworkImage('https://source.unsplash.com/1600x900/?$type`'),
            placeholder: const AssetImage('assets/jar-loading.gif'),
            width: double.infinity,
            height: 170,
            fit: BoxFit.cover,
            fadeInDuration: const Duration(milliseconds: 300),
          ),
          if (title != null)
            Container(
              alignment: AlignmentDirectional.centerEnd,
              padding: const EdgeInsets.only(right: 20, top: 10, bottom: 10),
              child: Text(title!),
            )
        ],
      ),
    );
  }
}
