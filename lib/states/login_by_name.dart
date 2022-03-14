import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:solarcellanalysis/models/site_model.dart';
import 'package:solarcellanalysis/states/check_pin_code.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/utility/my_dialog.dart';
import 'package:solarcellanalysis/widgets/show_button.dart';
import 'package:solarcellanalysis/widgets/show_form.dart';
import 'package:solarcellanalysis/widgets/show_image.dart';

class LoginByName extends StatefulWidget {
  const LoginByName({Key? key}) : super(key: key);

  @override
  State<LoginByName> createState() => _LoginByNameState();
}

class _LoginByNameState extends State<LoginByName> {
  String? siteName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        return GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusScopeNode()),
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                newLogo(constraints),
                newSiteName(),
                newLogin(),
              ],
            ),
          ),
        );
      }),
    );
  }

  ShowButton newLogin() => ShowButton(
      label: 'Login',
      pressFunc: () {
        if (siteName?.isEmpty ?? true) {
          MyDialog(context: context).normalDialog(
              title: 'No SiteName', message: 'Please Fill SiteName');
        } else {
          processCheckSiteName();
        }
      });

  ShowForm newSiteName() {
    return ShowForm(
      hint: 'SiteName',
      changeFunc: (String string) => siteName = string.trim(),
    );
  }

  SizedBox newLogo(BoxConstraints Constraints) {
    return SizedBox(
      width: Constraints.maxWidth * 0.4,
      child: const ShowImage(),
    );
  }

  Future<void> processCheckSiteName() async {
    await FirebaseFirestore.instance
        .collection('Site')
        .where('name', isEqualTo: siteName)
        .get()
        .then((value) {
      print('valute ==> ${value.docs}');
      if (value.docs.isEmpty) {
        MyDialog(context: context).actionDialog(
            title: 'SiteName False ?',
            message: 'Please Fill New SiteName or Login By Site ID',
            labelPressFunc: 'Login by Site ID',
            pressFunc: () => Navigator.pushNamedAndRemoveUntil(
                context, Myconstant.routeAddSiteId, (route) => false));
      } else {
        for (var item in value.docs) {
          String siteId = item.id;
          SiteModel siteModel = SiteModel.fromMap(item.data());
          Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    CheckPinCode(siteModel: siteModel, siteId: siteId),
              ),
              (route) => false);
        }
      }
    });
  }
}
