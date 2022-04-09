import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class Mlm extends StatelessWidget {
  const Mlm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('MLM'),
        backgroundColor: Colors.white,
        foregroundColor: Myconstant.dark,
      ),
      body: const Text('mlm'),
    );
  }
}
