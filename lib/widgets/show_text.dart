import 'package:flutter/material.dart';

class ShowText extends StatelessWidget {
  final String label;
  const ShowText({
    Key? key,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(label);
  }
}
