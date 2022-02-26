import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solarcellanalysis/states/find_apikey.dart';
import 'package:solarcellanalysis/states/main_home.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';


final Map<String, WidgetBuilder> map = {
  Myconstant.routeMainHome:(context) => const MainHome(),
  Myconstant.routeFindAPIkey:(context) => const FindApiKey(),
};
String? firstState; 


Future<void> main() async {


 WidgetsFlutterBinding.ensureInitialized();
 SharedPreferences preferences = await SharedPreferences.getInstance();
 var result = preferences.getStringList('data');
 print('result ==> $result');
 if (result ==null) {
   firstState = Myconstant.routeFindAPIkey;
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
      routes: map,
      initialRoute: firstState,
    );
  }
}
