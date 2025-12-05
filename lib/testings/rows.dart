import 'package:flutter/material.dart';

class RowWidget extends StatefulWidget {
  const RowWidget({super.key});

  @override
  State<RowWidget> createState() => _RowWidgetState();
}

class _RowWidgetState extends State<RowWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('hello'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 50, height: 150, color: Colors.red,
            ),
            Container(
              width: 50, height: 100, color: Colors.purple,
            ),
            Container(
              width: 50, height: 75, color: Colors.pink,
            ),
            Container(
              width: 50, height: 50, color: Colors.orange,
            ),
          ],
        ),
      ),
    );
  }
}