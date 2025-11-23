import 'package:flutter/material.dart';

class CustomImage extends StatelessWidget {
  final String imagePath;


  const CustomImage({
    super.key,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      imagePath,
    );
  }
}