import 'package:flutter/material.dart';
import 'package:solarcellanalysis/widgets/show_signout.dart';

class Setting extends StatelessWidget {
  const Setting({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ShowSignOut(),
    );
  }
}