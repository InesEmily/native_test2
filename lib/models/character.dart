import 'enums.dart';
import 'package:flutter_application_2/models/data.dart' as lib;

class Character {
  int id;
  String name;
  Gender gender;
  String wiki;
  List<String> affiliations;

  Character({
    required this.id,
    required this.name,
    required this.gender,
    required this.wiki,
    required this.affiliations,
  });
}

Character character1 = Character(
    id: 1,
    name: 'Luke',
    gender: Gender.male,
    wiki: 'http://starwars.wikia.com/wiki/Luke_Skywalker',
    affiliations: [
      "Alliance to Restore the Republic",
      "Red Squadron",
      "Rogue Squadron",
      "Massassi Group",
      "Leia Organa's team",
      "Endor strike team",
      "Jedi Order",
      "Bright Tree tribe",
      "New Republic",
      "Resistance"
    ]);

Character character2 = Character(
    id: 1,
    name: 'Luke',
    gender: Gender.male,
    wiki: 'http://starwars.wikia.com/wiki/Luke_Skywalker',
    affiliations: [
      "Alliance to Restore the Republic",
      "Red Squadron",
      "Rogue Squadron",
      "Massassi Group",
      "Leia Organa's team",
      "Endor strike team",
      "Jedi Order",
      "Bright Tree tribe",
      "New Republic",
      "Resistance"
    ]);

Character character3 = Character(
    id: 1,
    name: 'Luke',
    gender: Gender.male,
    wiki: 'http://starwars.wikia.com/wiki/Luke_Skywalker',
    affiliations: [
      "Alliance to Restore the Republic",
      "Red Squadron",
      "Rogue Squadron",
      "Massassi Group",
      "Leia Organa's team",
      "Endor strike team",
      "Jedi Order",
      "Bright Tree tribe",
      "New Republic",
      "Resistance"
    ]);

class CharachterList {
  final List<Character> starwaspeople;
  const CharachterList({required this.starwaspeople});
}

CharachterList starwarspeople =
    CharachterList(starwaspeople: [character1, character2, character3]);
