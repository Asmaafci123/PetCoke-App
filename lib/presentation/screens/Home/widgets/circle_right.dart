import 'package:flutter/material.dart';
class CircleRight extends StatelessWidget {
  final String imagePath;
  const CircleRight({Key? key,required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        right: 0,
        child: Image(
          image: AssetImage(imagePath),
        ));
  }
}
