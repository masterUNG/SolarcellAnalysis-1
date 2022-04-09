import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class ClientInfo extends StatelessWidget {
  const ClientInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Client Info'),
        backgroundColor: Colors.white,
        foregroundColor: Myconstant.dark,
      ),
      body: const Text('Client Ifo'),
    );
  }
}
