import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: pressFunc,
      child: Text(label),
    );
  }
}
