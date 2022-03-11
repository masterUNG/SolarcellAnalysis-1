import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solarcellanalysis/states/about.dart';
import 'package:solarcellanalysis/states/add_site_id.dart';
import 'package:solarcellanalysis/states/find_apikey.dart';
import 'package:solarcellanalysis/states/main_home.dart';
import 'package:solarcellanalysis/states/setting.dart';
import 'package:solarcellanalysis/states/site_details.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

final Map<String, WidgetBuilder> map = {
  Myconstant.routeMainHome: (context) => const MainHome(),
  Myconstant.routeFindAPIkey: (context) => const FindApiKey(),
  Myconstant.routeSiteDetails: (context) => const SiteDetail(),
  Myconstant.routeSettings: (context) => const Setting(),
  Myconstant.routeAbout: (context) => const About(),
  Myconstant.routeAddSiteId: (context) => const AddSiteId(),
};
String? firstState;

Future<void> main() async {
  HttpOverrides.global = MyOverrideHttp();
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  SharedPreferences preferences = await SharedPreferences.getInstance();
  var result = preferences.getStringList('data');
  //print('result ==> $result');
  if (result == null) {
    firstState = Myconstant.routeAddSiteId;
  } else {
    firstState = Myconstant.routeMainHome;
  }

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: map,
      initialRoute: firstState,
    );
  }
}

class MyOverrideHttp extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback = (cert, host, port) => true;
  }
}
