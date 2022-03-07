// ignore_for_file: non_constant_identifier_names

import 'dart:convert';

class DetailsModel {
  final int id;
  final String name;
  final int accountId;
  final String status;
  final double peakPower;
  final String lastUpdateTime;
  final String currency;
  final String installationDate;
  final String ptoDate;
  final String notes;
  final String type;
  final Location location;
  final PrimaryModule primaryModule;
  final Uris uris;
  final PublicSettings publicSettings;
  DetailsModel({
    required this.id,
    required this.name,
    required this.accountId,
    required this.status,
    required this.peakPower,
    required this.lastUpdateTime,
    required this.currency,
    required this.installationDate,
    required this.ptoDate,
    required this.notes,
    required this.type,
    required this.location,
    required this.primaryModule,
    required this.uris,
    required this.publicSettings,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'accountId': accountId,
      'status': status,
      'peakPower': peakPower,
      'lastUpdateTime': lastUpdateTime,
      'currency': currency,
      'installationDate': installationDate,
      'ptoDate': ptoDate,
      'notes': notes,
      'type': type,
      'location': location.toMap(),
      'primaryModule': primaryModule.toMap(),
      'uris': uris.toMap(),
      'publicSettings': publicSettings.toMap(),
    };
  }

  factory DetailsModel.fromMap(Map<String, dynamic> map) {
    return DetailsModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      accountId: map['accountId']?.toInt() ?? 0,
      status: map['status'] ?? '',
      peakPower: map['peakPower']?.toDouble() ?? 0.0,
      lastUpdateTime: map['lastUpdateTime'] ?? '',
      currency: map['currency'] ?? '',
      installationDate: map['installationDate'] ?? '',
      ptoDate: map['ptoDate'] ?? '',
      notes: map['notes'] ?? '',
      type: map['type'] ?? '',
      location: Location.fromMap(map['location']),
      primaryModule: PrimaryModule.fromMap(map['primaryModule']),
      uris: Uris.fromMap(map['uris']),
      publicSettings: PublicSettings.fromMap(map['publicSettings']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DetailsModel.fromJson(String source) => DetailsModel.fromMap(json.decode(source));
}

class Location {
  final String country;
  final String city;
  final String address;
  final String address2;
  final String zip;
  final String timeZone;
  final String countryCode;
  Location({
    required this.country,
    required this.city,
    required this.address,
    required this.address2,
    required this.zip,
    required this.timeZone,
    required this.countryCode,
  });

  Map<String, dynamic> toMap() {
    return {
      'country': country,
      'city': city,
      'address': address,
      'address2': address2,
      'zip': zip,
      'timeZone': timeZone,
      'countryCode': countryCode,
    };
  }

  factory Location.fromMap(Map<String, dynamic> map) {
    return Location(
      country: map['country'] ?? '',
      city: map['city'] ?? '',
      address: map['address'] ?? '',
      address2: map['address2'] ?? '',
      zip: map['zip'] ?? '',
      timeZone: map['timeZone'] ?? '',
      countryCode: map['countryCode'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Location.fromJson(String source) => Location.fromMap(json.decode(source));
}

class PrimaryModule {
  final String manufacturerName;
  final String modelName;
  final double maximumPower;
  PrimaryModule({
    required this.manufacturerName,
    required this.modelName,
    required this.maximumPower,
  });
 

  Map<String, dynamic> toMap() {
    return {
      'manufacturerName': manufacturerName,
      'modelName': modelName,
      'maximumPower': maximumPower,
    };
  }

  factory PrimaryModule.fromMap(Map<String, dynamic> map) {
    return PrimaryModule(
      manufacturerName: map['manufacturerName'] ?? '',
      modelName: map['modelName'] ?? '',
      maximumPower: map['maximumPower']?.toDouble() ?? 0.0,
    );
  }

  String toJson() => json.encode(toMap());

  factory PrimaryModule.fromJson(String source) => PrimaryModule.fromMap(json.decode(source));
}

class Uris {
  final String SITEIMAGE;
  final String DATAPERIOD;
  final String INSTALLERIMAGE;
  final String DETAILS;
  final String OVERVIEW;
  Uris({
    required this.SITEIMAGE,
    required this.DATAPERIOD,
    required this.INSTALLERIMAGE,
    required this.DETAILS,
    required this.OVERVIEW,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'SITE_IMAGE': SITEIMAGE,
      'DATA_PERIOD': DATAPERIOD,
      'INSTALLER_IMAGE': INSTALLERIMAGE,
      'DETAILS': DETAILS,
      'OVERVIEW': OVERVIEW,
    };
  }

  factory Uris.fromMap(Map<String, dynamic> map) {
    return Uris(
      SITEIMAGE: map['SITE_IMAGE'] ?? '',
      DATAPERIOD: map['DATA_PERIOD'] ?? '',
      INSTALLERIMAGE: map['INSTALLER_IMAGE'] ?? '',
      DETAILS: map['DETAILS'] ?? '',
      OVERVIEW: map['OVERVIEW'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Uris.fromJson(String source) => Uris.fromMap(json.decode(source));
}

class PublicSettings {
  final bool isPublic;
  PublicSettings({
    required this.isPublic,
  });
  

  Map<String, dynamic> toMap() {
    return {
      'isPublic': isPublic,
    };
  }

  factory PublicSettings.fromMap(Map<String, dynamic> map) {
    return PublicSettings(
      isPublic: map['isPublic'] ?? false,
    );
  }

  String toJson() => json.encode(toMap());

  factory PublicSettings.fromJson(String source) => PublicSettings.fromMap(json.decode(source));
}
