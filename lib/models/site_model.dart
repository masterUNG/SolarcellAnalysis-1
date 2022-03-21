import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class SiteModel {
  final String apiKey;
  final String pinCode;
  final String name;
  final Timestamp mainten1;
  final Timestamp mainten2;
  final Timestamp mainten3;
  SiteModel({
    required this.apiKey,
    required this.pinCode,
    required this.name,
    required this.mainten1,
    required this.mainten2,
    required this.mainten3,
  });

  Map<String, dynamic> toMap() {
    return {
      'apiKey': apiKey,
      'pinCode': pinCode,
      'name': name,
      'mainten1': mainten1,
      'mainten2': mainten2,
      'mainten3': mainten3,
    };
  }

  factory SiteModel.fromMap(Map<String, dynamic> map) {
    return SiteModel(
      apiKey: map['apiKey'] ?? '',
      pinCode: map['pinCode'] ?? '',
      name: map['name'] ?? '',
      mainten1: (map['mainten1']),
      mainten2: (map['mainten2']),
      mainten3: (map['mainten3']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SiteModel.fromJson(String source) =>
      SiteModel.fromMap(json.decode(source));
}
