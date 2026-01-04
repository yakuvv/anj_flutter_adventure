import 'package:flutter/material.dart';
import 'package:flutter_playground/Carias_Midterm_CCS2801/screens/24_midterm_signin.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const MidtermSignIn(),
      debugShowCheckedModeBanner: false,
    );
  }
}
