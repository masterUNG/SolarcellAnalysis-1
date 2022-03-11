import 'dart:convert';

class SiteCurrentPowerFlow {
  final String unit;
  final Grid grid;
  final Load load;
  final PV pv;
  SiteCurrentPowerFlow({
    required this.unit,
    required this.grid,
    required this.load,
    required this.pv,
  });

  Map<String, dynamic> toMap() {
    return {
      'unit': unit,
      'GRID': grid.toMap(),
      'LOAD': load.toMap(),
      'PV': pv.toMap(),
    };
  }

  factory SiteCurrentPowerFlow.fromMap(Map<String, dynamic> map) {
    return SiteCurrentPowerFlow(
      unit: map['unit'] ?? '',
      grid: Grid.fromMap(map['GRID']),
      load: Load.fromMap(map['LOAD']),
      pv: PV.fromMap(map['PV']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SiteCurrentPowerFlow.fromJson(String source) => SiteCurrentPowerFlow.fromMap(json.decode(source));
}

class Grid {
  final String status;
  final double currentPower;
  Grid({
    required this.status,
    required this.currentPower,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'currentPower': currentPower,
    };
  }

  factory Grid.fromMap(Map<String, dynamic> map) {
    return Grid(
      status: map['status'] ?? '',
      currentPower: map['currentPower']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Grid.fromJson(String source) => Grid.fromMap(json.decode(source));
}

class Load {
  final String status;
  final double currentPower;
  Load({
    required this.status,
    required this.currentPower,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
      'currentPower': currentPower,
    };
  }

  factory Load.fromMap(Map<String, dynamic> map) {
    return Load(
      status: map['status'] ?? '',
      currentPower: map['currentPower']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Load.fromJson(String source) => Load.fromMap(json.decode(source));
}

class PV {
  final String status;
  PV({
    required this.status,
  });

  Map<String, dynamic> toMap() {
    return {
      'status': status,
    };
  }

  factory PV.fromMap(Map<String, dynamic> map) {
    return PV(
      status: map['status'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PV.fromJson(String source) => PV.fromMap(json.decode(source));
}
