import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class Environments extends StatelessWidget {
  const Environments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Environments'),
        backgroundColor: Colors.white,
        foregroundColor: Myconstant.dark,
      ),
      body: const Text('Environments'),
    );
  }
}
