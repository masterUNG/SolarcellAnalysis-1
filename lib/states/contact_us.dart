import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class ContactUs extends StatelessWidget {
  const ContactUs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Contact Us'),
        foregroundColor: Myconstant.dark,
        backgroundColor: Colors.white,
      ),
      body: const Text('Contact Us'),
    );
  }
}
