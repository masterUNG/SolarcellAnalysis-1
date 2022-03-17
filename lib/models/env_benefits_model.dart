import 'dart:convert';

class EnvBenefitsModel {
  final GasEmissionSaved gasEmissionSaved;
  final double treesPlanted;
  final double lightBulbs;
  EnvBenefitsModel({
    required this.gasEmissionSaved,
    required this.treesPlanted,
    required this.lightBulbs,
  });


  Map<String, dynamic> toMap() {
    return {
      'gasEmissionSaved': gasEmissionSaved.toMap(),
      'treesPlanted': treesPlanted,
      'lightBulbs': lightBulbs,
    };
  }

  factory EnvBenefitsModel.fromMap(Map<String, dynamic> map) {
    return EnvBenefitsModel(
      gasEmissionSaved: GasEmissionSaved.fromMap(map['gasEmissionSaved']),
      treesPlanted: map['treesPlanted']?.toDouble() ?? 0.0,
      lightBulbs: map['lightBulbs']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory EnvBenefitsModel.fromJson(String source) => EnvBenefitsModel.fromMap(json.decode(source));
}

class GasEmissionSaved {
  final String units;
  final double co2;
  final double so2;
  final double nox;
  GasEmissionSaved({
    required this.units,
    required this.co2,
    required this.so2,
    required this.nox,
  });

  Map<String, dynamic> toMap() {
    return {
      'units': units,
      'co2': co2,
      'so2': so2,
      'nox': nox,
    };
  }

  factory GasEmissionSaved.fromMap(Map<String, dynamic> map) {
    return GasEmissionSaved(
      units: map['units'] ?? '',
      co2: map['co2']?.toDouble() ?? 0.0,
      so2: map['so2']?.toDouble() ?? 0.0,
      nox: map['nox']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory GasEmissionSaved.fromJson(String source) =>
      GasEmissionSaved.fromMap(json.decode(source));
}
