import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class ShowButton extends StatelessWidget {
  final String label;
  final Function () pressFunc;
  const ShowButton({
    Key? key,
    required this.label,
    required this.pressFunc,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(margin: const EdgeInsets.symmetric(vertical: 8),
      child: ElevatedButton(style: ElevatedButton.styleFrom(primary:  Myconstant.primary),
        onPressed: pressFunc,
        child: Text(label),
      ),
    );
  }
}
