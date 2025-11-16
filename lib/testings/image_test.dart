import 'package:flutter/material.dart';

class ImageTest extends StatelessWidget {

  const ImageTest({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          'signin.png',
        ),
      ),
    );
  }
}
