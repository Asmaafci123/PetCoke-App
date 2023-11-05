import 'package:flutter/material.dart';
class CircleLeft extends StatelessWidget {
  final String imagePath;
  const CircleLeft({Key? key,required this.imagePath}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: 0,
        left: 0,
        child: Image(
          image: AssetImage(imagePath),
        ));
  }
}
