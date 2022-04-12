// ignore_for_file: avoid_print

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:solarcellanalysis/models/site_model.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/widgets/show_progress.dart';
import 'package:solarcellanalysis/widgets/show_text.dart';

class ClientInfo extends StatefulWidget {
  const ClientInfo({Key? key}) : super(key: key);

  @override
  State<ClientInfo> createState() => _ClientInfoState();
}

class _ClientInfoState extends State<ClientInfo> {
  bool load = true;
  SiteModel? siteModel;

  @override
  void initState() {
    super.initState();
    readSite();
  }

  Future<void> readSite() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    var datas = preferences.getStringList('data');
    print('data ==> $datas');
    await FirebaseFirestore.instance
        .collection('Site')
        .doc(datas![0])
        .get()
        .then((value) {
      print('value ==> ${value.data()}');
      siteModel = SiteModel.fromMap(value.data()!);
      load = false;
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Client Info'),
        backgroundColor: Colors.white,
        foregroundColor: Myconstant.dark,
      ),
      body: load ? const Center(child: ShowProgress()) : ShowText(label: siteModel!.name),
    );
  }
}
