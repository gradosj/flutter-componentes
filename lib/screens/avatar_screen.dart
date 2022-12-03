import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatars'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            child: const CircleAvatar(
              backgroundColor: Colors.black,
              child: Text('LP'),
            ),
          )
        ],
      ),
      body: const Center(
        child: const CircleAvatar(
          maxRadius: 150,
          backgroundImage: NetworkImage(
              'https://cdn1.celebritax.com/sites/default/files/styles/watermark_100/public/1645284877-laura-pausini-agradece-su-exnovio-marco-inspirar-grandes-exitos-su-carrera.jpg'),
        ),
      ),
    );
  }
}
