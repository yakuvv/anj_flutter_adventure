import 'package:flutter/material.dart';

class AddSnackBars extends StatelessWidget {
  const AddSnackBars({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: (){
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(
                  'The button was clicked.'
              ),
              action: SnackBarAction(label: 'Clicked', onPressed: (){
                showDialog(context: context, builder: (context) => AlertDialog(
                  content: Text('The Button was clicked.'),
                ),
                );
              }
              ),
            ),
          );
        }, child: Text(
          'SnackBar',
        ),
        ),
        ),
      ),
    );
  }
}
