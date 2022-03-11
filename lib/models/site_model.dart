import 'dart:convert';

class SiteModel {
  final String apiKey;
  final int pinCode;
  SiteModel({
    required this.apiKey,
    required this.pinCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'apiKey': apiKey,
      'pinCode': pinCode,
    };
  }

  factory SiteModel.fromMap(Map<String, dynamic> map) {
    return SiteModel(
      apiKey: map['apiKey'] ?? '',
      pinCode: map['pinCode']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory SiteModel.fromJson(String source) => SiteModel.fromMap(json.decode(source));
}
