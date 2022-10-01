import 'package:flutter/material.dart';
import 'package:pokedex_2022/app/modules/pokedex/domain/model/pokemon_model.dart';

import '../widget/about_pokemon/header_about_pokemon_widget.dart';

class PokedexAboutPokemonPage extends StatelessWidget {
  final PokemonModel pokemon;
  const PokedexAboutPokemonPage({
    Key? key,
    required this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Material(
      child: Column(
        children: [
          HeaderAboutPokemonWidget(
            image: pokemon.image,
            name: pokemon.name,
            number: pokemon.num,
            color: pokemon.baseColor,
          ),
          Column(
            children: [
              Text(
                pokemon.type[0],
              ),
              Container(height: 20, width: 20, color: pokemon.baseColor)
            ],
          ),
        ],
      ),
    );
  }
}

// color(List<String> list) {
//   for (var element in list) {
//     print(element);
//   }
// }
