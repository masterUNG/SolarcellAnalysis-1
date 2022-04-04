import 'package:flutter/material.dart';


class Client_info extends StatefulWidget {
  const Client_info({ Key? key }) : super(key: key);

  @override
  State<Client_info> createState() => _Client_infoState();
}

class _Client_infoState extends State<Client_info> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Client Info') ,),
    );
  }
}