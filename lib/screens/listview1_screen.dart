import 'package:flutter/material.dart';

class Listview1Screen extends StatelessWidget {
  const Listview1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = ['Megaman', 'Zelda', 'Pokémon', 'Super Smash', 'DMC'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListView 1'),
      ),
      body: ListView(
        children: [
          ...options
              .map((game) => ListTile(
                    leading: const Icon(Icons.rocket_launch_outlined),
                    title: Text(game),
                    trailing: const Icon(Icons.arrow_forward_outlined),
                  ))
              .toList()
        ],
      ),
    );
  }
}
