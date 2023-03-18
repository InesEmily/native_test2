class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}

enum Gender { male, female }

final genderValues = EnumValues({
  'female': Gender.female,
  'male': Gender.male,
});

enum Affiliation { all, resistance, sith, jediOrder }

final affiliationValues = EnumValues({
  'All': Affiliation.all,
  'Resistance': Affiliation.resistance,
  'Sith': Affiliation.sith,
  'Jedi Order': Affiliation.jediOrder,
});
