import 'package:flutter/material.dart';
import 'package:solarcellanalysis/utility/my_constant.dart';

class ShowText extends StatelessWidget {
  final String label;
  final TextStyle? textStyle;
  const ShowText({
    Key? key,
    required this.label,
     this.textStyle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label, style: textStyle ?? Myconstant().h3Style(),);
  }
}
