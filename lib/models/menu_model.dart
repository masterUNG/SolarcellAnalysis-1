import 'dart:convert';

class MenuModel {
  final String title;
  final String pathRoute;
  MenuModel({
    required this.title,
    required this.pathRoute,
  });

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'pathRoute': pathRoute,
    };
  }

  factory MenuModel.fromMap(Map<String, dynamic> map) {
    return MenuModel(
      title: map['title'] ?? '',
      pathRoute: map['pathRoute'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory MenuModel.fromJson(String source) => MenuModel.fromMap(json.decode(source));
}
