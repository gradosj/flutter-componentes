import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class CustomCardType2 extends StatelessWidget {
  final String imageUrl; // obligas al usuario
  final String? name; // no lo obligas

  const CustomCardType2({super.key, required this.imageUrl, this.name});

  @override
  Widget build(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        shadowColor: AppTheme.primary.withOpacity(0.5),
        elevation: 10,
        child: Column(
          children: [
            FadeInImage(
              image: NetworkImage(imageUrl),
              placeholder:
                  const AssetImage('assets/img/loading.gif'), // imagen de carga
              width: double.infinity,
              height: 230,
              fit: BoxFit.cover, // tamaño
              fadeInDuration: const Duration(milliseconds: 300),
            ),
            if (name != null)
              Container(
                alignment: AlignmentDirectional.bottomEnd,
                padding: EdgeInsets.only(right: 20, top: 10, bottom: 10),
                child: Text(name ?? 'Go go'),
              )
          ],
        ));
  }
}
