// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/widgets/show_card.dart';
import 'package:solarcellanalysis/widgets/show_text.dart';

class ContactUs extends StatefulWidget {
  final List<String> datas;
  const ContactUs({
    Key? key,
    required this.datas,
  }) : super(key: key);

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Us'),
        foregroundColor: Myconstant.dark,
        backgroundColor: Colors.white,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) => Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ShowCard2(
                size: constraints.maxWidth * 0.33,
                label: 'Contact Us',
                pathImage: 'images/contact.png'),
            ListTile(
              leading: Icon(Icons.home_repair_service),
              title: ShowText(label: 'แจ้งซ่อม'),
            ),
             ListTile(
              leading: Icon(Icons.history),
              title: ShowText(label: 'ประวัติการซ่อม'),
            ),
             ListTile(
              leading: Icon(Icons.phone),
              title: ShowText(label: 'แสดงเบอร์ติดต่อ'),
            ),
             ListTile(
              leading: Icon(Icons.home_outlined),
              title: ShowText(label: 'ที่อยู่บริษัท'),
            ),
          ],
        ),
      ),
    );
  }
}
