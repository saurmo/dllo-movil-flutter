import 'package:apptareas20232/app_scroll_infinity/controllers/Pokemon.controller.dart';
import 'package:apptareas20232/app_scroll_infinity/models/Pokemon.dart';
import 'package:flutter/material.dart';

class ListViewPokemons extends StatefulWidget {
  const ListViewPokemons({
    super.key,
  });

  @override
  State<ListViewPokemons> createState() => _ListViewPokemonsState();
}

class _ListViewPokemonsState extends State<ListViewPokemons> {
  @override
  Widget build(BuildContext context) {
    PokemonController _controller = PokemonController();

    return RefreshIndicator(
        onRefresh: () async {
          setState(() {});
        },
        child: loadPokemons(_controller));
  }

  FutureBuilder<List<Pokemon>> loadPokemons(PokemonController _controller) {
    return FutureBuilder(
      future: _controller.getPokemons(),
      builder: (context, snapshot) {
        switch (snapshot.connectionState) {
          case ConnectionState.waiting:
            return const CircularProgressIndicator();
          case ConnectionState.done:
            List<Pokemon> pokemons = snapshot.data!;
            return ListView.builder(
              itemBuilder: (context, index) {
                return ListTile(
                  dense: true,
                  title: Text(pokemons[index].name),
                  subtitle: Text(pokemons[index].url),
                );
              },
              itemCount: pokemons.length,
            );
          default:
            return const Text("Error");
        }
      },
    );
  }
}
