import 'package:flutter/material.dart';
import 'package:flutter_playground/ccs2801/18_add_snackbar.dart';
import 'package:flutter_playground/ccs2801/19_add_navigation.dart';
import 'package:flutter_playground/ccs2801/20_add_text_form_field.dart';
import 'package:flutter_playground/ccs2801/22_compare_text_values.dart';
import 'package:flutter_playground/ccs2801/activity2.dart';
import 'package:flutter_playground/practice/screens/registration.dart';
import 'package:flutter_playground/practice/screens/sign_in.dart';
import 'package:flutter_playground/testings/columnrows.dart';
import 'package:flutter_playground/testings/image_test.dart';
import 'package:flutter_playground/testings/nervi_login.dart';
import 'package:flutter_playground/testings/rows.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      home: const RowWidget(),
      debugShowCheckedModeBanner: false,
    );
  }
}
