import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class Advertistment extends StatelessWidget {
  const Advertistment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Advertistment'),
        backgroundColor: Colors.white,
        foregroundColor: Myconstant.dark,
      ),
      body: const Text('ads'),
    );
  }
}
