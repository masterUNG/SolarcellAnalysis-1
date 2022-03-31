import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:solarcellanalysis/models/site_model.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/utility/my_dialog.dart';
import 'package:solarcellanalysis/widgets/show_image.dart';
import 'package:solarcellanalysis/widgets/show_text.dart';

class CheckPinCode extends StatefulWidget {
  final SiteModel siteModel;
  final String siteId;
  final bool? setting;
  const CheckPinCode({
    Key? key,
    required this.siteModel,
    required this.siteId,
    this.setting,
  }) : super(key: key);

  @override
  State<CheckPinCode> createState() => _CheckPinCodeState();
}

class _CheckPinCodeState extends State<CheckPinCode> {
  SiteModel? siteModel;
  OtpFieldController controller = OtpFieldController();
  bool? setting;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    siteModel = widget.siteModel;
    setting = widget.setting;
    setting ?? false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
              newImage(),
              newImage2(),
            ],
            
          ),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, 
            children: [
             newImage3(),
            ],
            
          ),
          SizedBox(
            height: 16,
          ),
          OTPTextField(keyboardType: TextInputType.text,
            fieldStyle: FieldStyle.box,
            otpFieldStyle: OtpFieldStyle(backgroundColor: Colors.grey.shade300),
            fieldWidth: 40,
            controller: controller,
            length: 6,
            width: 300,
            onCompleted: (String string) {
              if (string == siteModel!.pinCode.toString()) {
                if (setting ?? false) {
                  Navigator.pushNamedAndRemoveUntil(
                      context, Myconstant.routeSettings, (route) => false);
                } else {
                  processSaveData();
                }
              } else {
                controller.clear();
                MyDialog(context: context).normalDialog(
                    title: 'Pin Code False', message: 'Please Try Again');
                setState(() {});
              }
            },
          ),
        ],
      )),
    );
  }

  SizedBox newImage() => SizedBox(width: 120, child: ShowImage());
  SizedBox newImage2() => SizedBox(width: 140, child: ShowImage2());
  SizedBox newImage3() => SizedBox(width: 20, child: ShowImage3());

  Future<void> processSaveData() async {
    var datas = <String>[];
    datas.add(widget.siteId);
    datas.add(siteModel!.apiKey);
    print('datas ==> $datas');

    SharedPreferences preferences = await SharedPreferences.getInstance();
    preferences.setStringList('data', datas).then((value) =>
        Navigator.pushNamedAndRemoveUntil(
            context, Myconstant.routeMainHome, (route) => false));
  }
}
