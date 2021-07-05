import 'dart:convert';

import 'package:meta/meta.dart';

class User {
  final String name;
  final String height;
  final String weight;
  final String img;
  final String career;
  final String agility;

  const User({
    @required this.name,
    @required this.height,
    @required this.weight,
    @required this.img,
    @required this.career,
    @required this.agility,
  });

  static User fromJson(json) => User(
        name: json['name'],
        height: json['height'],
        weight: json['weight'],
        img: json['img_url'],
        career: json['career'],
        agility: json['agility'],
      );
}
