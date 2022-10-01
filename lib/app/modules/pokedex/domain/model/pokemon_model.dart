// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class PokemonModel {
  final String name;
  final String img;
  final String num;
  final List<String> type;

  PokemonModel({
    required this.name,
    required this.img,
    required this.num,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'img': img,
      'num': num,
      'type': type,
    };
  }

  factory PokemonModel.fromMap(Map<String, dynamic> map) {
    return PokemonModel(
      type: List<String>.from(map['type'] ?? []),
      name: map['name'] ?? '',
      img: map['img'] ?? '',
      num: map['num'] ?? '',
    );
  }

  String get image =>
      'https://raw.githubusercontent.com/fanzeyi/pokemon.json/master/images/$num.png';

  Color? get baseColor => _color(type: type[0]);

  String? get imageType => _typeImage(type: type[0]);

  String toJson() => jsonEncode(toMap());

  factory PokemonModel.fromJson(String json) => PokemonModel.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'PokemonModel(name: $name, img: $img, num: $num)';
  }

  static Color? _color({required String type}) {
    switch (type) {
      case 'Normal':
        return Colors.brown[400];
      case 'Fire':
        return Colors.red;
      case 'Water':
        return Colors.blue;
      case 'Grass':
        return Colors.green;
      case 'Electric':
        return Colors.amber;
      case 'Ice':
        return Colors.cyanAccent[400];
      case 'Fighting':
        return Colors.orange;
      case 'Poison':
        return Colors.purple;
      case 'Ground':
        return Colors.orange[300];
      case 'Flying':
        return Colors.indigo[200];
      case 'Psychic':
        return Colors.pink;
      case 'Bug':
        return Colors.lightGreen[500];
      case 'Rock':
        return Colors.grey;
      case 'Ghost':
        return Colors.indigo[400];
      case 'Dark':
        return Colors.brown;
      case 'Dragon':
        return Colors.indigo[800];
      case 'Steel':
        return Colors.blueGrey;
      case 'Fairy':
        return Colors.pinkAccent[100];
      default:
        return Colors.grey;
    }
  }

  static String? _typeImage({required String type}) {
    switch (type) {
      case 'Normal':
        return 'assets/types/normal.png';
      case 'Fire':
        return 'assets/types/fire.png';
      case 'Water':
        return 'assets/types/water.png';
      case 'Grass':
        return 'assets/types/grass.png';
      case 'Electric':
        return 'assets/types/electric.png';
      case 'Ice':
        return 'assets/types/ice.png';
      case 'Fighting':
        return 'assets/types/fighting.png';
      case 'Poison':
        return 'assets/types/poison.png';
      case 'Ground':
        return 'assets/types/ground.png';
      case 'Flying':
        return 'assets/types/flying.png';
      case 'Psychic':
        return 'assets/types/psychic.png';
      case 'Bug':
        return 'assets/types/bug.png';
      case 'Rock':
        return 'assets/types/rock.png';
      case 'Ghost':
        return 'assets/types/ghost.png';
      case 'Dark':
        return 'assets/types/dark.png';
      case 'Dragon':
        return 'assets/types/dragon.png';
      case 'Steel':
        return 'assets/types/steel.png';
      case 'Fairy':
        return 'assets/types/fairy.png';
    }
  }
}
