import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: const [
          CustomCardType1(),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            name: 'Gogo Power Rangers',
            imageUrl:
                'https://images.hdqwalls.com/wallpapers/power-rangers-battle-for-the-grid-5k-wj.jpg',
          ),
          SizedBox(
            height: 10,
          ),
          CustomCardType2(
            imageUrl:
                'https://images.hdqwalls.com/wallpapers/black-power-ranger-5k-wide.jpg',
          ),
          CustomCardType2(
            imageUrl:
                'https://images.hdqwalls.com/wallpapers/power-rangers-tommy-oliver-su.jpg',
          ),
          CustomCardType2(
            imageUrl:
                'https://images.hdqwalls.com/wallpapers/all-power-rangers-4k-av.jpg',
          ),
        ],
      ),
    );
  }
}
