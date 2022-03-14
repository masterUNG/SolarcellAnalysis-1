import 'dart:convert';

class SiteModel {
  final String apiKey;
  final int pinCode;
  final String name;
  SiteModel({
    required this.apiKey,
    required this.pinCode,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return {
      'apiKey': apiKey,
      'pinCode': pinCode,
      'name': name,
    };
  }

  factory SiteModel.fromMap(Map<String, dynamic> map) {
    return SiteModel(
      apiKey: map['apiKey'] ?? '',
      pinCode: map['pinCode']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory SiteModel.fromJson(String source) =>
      SiteModel.fromMap(json.decode(source));
}
