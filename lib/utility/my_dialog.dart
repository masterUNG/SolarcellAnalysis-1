import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';
import 'package:solarcellanalysis/widgets/show_image.dart';
import 'package:solarcellanalysis/widgets/show_text.dart';

class MyDialog {
  final BuildContext context;
  MyDialog({
    required this.context,
  });

  Future<void> normalDialog(
      {required String title, required String message}) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(),
          title: ShowText(
            label: title,
            textStyle: Myconstant().h2Style(),
          ),
          subtitle: ShowText(label: message),
        ),
        actions: [
          TextButton(
              onPressed: () => Navigator.pop(context), child: const Text('OK'))
        ],
      ),
    );
  }

  Future<void> actionDialog({
    required String title,
    required String message,
    required String labelPressFunc,
    required Function() pressFunc,
  }) async {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: ListTile(
          leading: ShowImage(),
          title: ShowText(
            label: title,
            textStyle: Myconstant().h2Style(),
          ),
          subtitle: ShowText(label: message),
        ),
        actions: [
          TextButton(onPressed: pressFunc, child: Text(labelPressFunc)),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Cancel'),
          ),
        ],
      ),
    );
  }
}
