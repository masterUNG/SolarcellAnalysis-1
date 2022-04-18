// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import 'package:solarcellanalysis/widgets/show_text.dart';

class ShowCard extends StatelessWidget {
  final double size;
  final double? height;
  final String label;
  final String pathImage;
  const ShowCard({
    Key? key,
    required this.size,
    this.height,
    required this.label,
    required this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: height ?? size,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowText(label: label),
            SizedBox(width: size - 50, child: Image.asset(pathImage)),
          ],
        ),
      ),
    );
  }
}

class ShowCard3 extends StatelessWidget {
  final double size;
  final String label;
  final String pathImage;
  const ShowCard3({
    Key? key,
    required this.size,
    required this.label,
    required this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowText(label: label),
            SizedBox(width: size - 25, child: Image.asset(pathImage)),
          ],
        ),
      ),
    );
  }
}

class ShowCard4 extends StatelessWidget {
  final double size;
  final String label;
  final String pathImage;
  const ShowCard4({
    Key? key,
    required this.size,
    required this.label,
    required this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowText(label: label),
            SizedBox(width: size - 25, child: Image.asset(pathImage)),
          ],
        ),
      ),
    );
  }
}

class ShowCard2 extends StatelessWidget {
  final double size;
  final String label;
  final String pathImage;
  const ShowCard2({
    Key? key,
    required this.size,
    required this.label,
    required this.pathImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Card(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShowText(label: label),
            SizedBox(width: size - 25, child: Image.asset(pathImage)),
          ],
        ),
      ),
    );
  }
}
