import 'enums.dart';

class Character {
  Character({
    required this.id,
    required this.name,
    required this.gender,
    required this.wiki,
    required this.affiliations,
  });

  int id;
  String name;
  Gender gender;
  String wiki;
  List<String> affiliations;

  factory Character.fromJson(Map<String, dynamic> json) => Character(
        id: json['id'],
        name: json['name'],
        gender: genderValues.map[json['gender']]!,
        wiki: json['wiki'],
        affiliations: List<String>.from(json['affiliations'].map((x) => x)),
      );
}
