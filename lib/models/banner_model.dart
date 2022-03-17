import 'dart:convert';

class BannerModel {
  final String pathBanner;
  final String pathUrl;
  BannerModel({
    required this.pathBanner,
    required this.pathUrl,
  });

  Map<String, dynamic> toMap() {
    return {
      'pathBanner': pathBanner,
      'pathUrl': pathUrl,
    };
  }

  factory BannerModel.fromMap(Map<String, dynamic> map) {
    return BannerModel(
      pathBanner: map['pathBanner'] ?? '',
      pathUrl: map['pathUrl'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory BannerModel.fromJson(String source) => BannerModel.fromMap(json.decode(source));
}
