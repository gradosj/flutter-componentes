import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  final options = const [
    'Dragon Ball',
    'Stranger things',
    'Pokemons',
    'Eres muh zorra'
  ];

  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Listview Tipo 2'),
        ),
        body: ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: options.length,
          itemBuilder: (context, index) => ListTile(
            title: Text(options[index]),
            trailing: const Icon(Icons.arrow_forward_ios_outlined,
                color: Color.fromARGB(219, 54, 95, 199)),
            onTap: () {
              final game = options[index];
              print(game);
            },
          ), // como va a construir cada uno de los items
        )); //logitud
  }
}
