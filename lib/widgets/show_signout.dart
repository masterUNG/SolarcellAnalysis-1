import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/widgets/show_button.dart';
import 'package:solarcellanalysis/widgets/show_card.dart';

class ShowSignOut extends StatelessWidget {
  const ShowSignOut({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () async {
        SharedPreferences preferences = await SharedPreferences.getInstance();
        preferences.clear().then((value) => Navigator.pushNamedAndRemoveUntil(
            context, Myconstant.routeLoginByName, (route) => false));
      },
      child: const ShowCard(
          size: 120, label: 'Sign Out', pathImage: 'images/signout_icon.png'),
    );
    // return ShowButton(
    //     label: 'SignOut',
    //     pressFunc: () async {
    //       SharedPreferences preferences = await SharedPreferences.getInstance();
    //       preferences.clear().then((value) => Navigator.pushNamedAndRemoveUntil(
    //           context, Myconstant.routeAddSiteId, (route) => false));
    //     });
  }
}
