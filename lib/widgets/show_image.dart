import 'package:flutter/material.dart';

class ShowImage extends StatelessWidget {
  final String? path;
  const ShowImage({
    Key? key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path ?? 'images/logo.png');
  }
}
class ShowImage2 extends StatelessWidget {
  final String? path;
  const ShowImage2({
    Key? key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path ?? 'images/logo2.png');
  }
}
class ShowImage3 extends StatelessWidget {
  final String? path;
  const ShowImage3({
    Key? key,
    this.path,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Image.asset(path ?? 'images/space.png');
  }
}
