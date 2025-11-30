import 'package:flutter/material.dart';
import 'package:flutter_playground/CCS2801_PRACTICE/02_buttons.dart';
import 'package:flutter_playground/CCS2801_PRACTICE/03_image.dart';
import 'package:flutter_playground/CCS2801_PRACTICE/23_activity3_registration.dart';
import 'package:flutter_playground/CCS2801_PRACTICE/23_activity3_signin.dart';
import 'package:flutter_playground/Carias_Midterm_CCS2801/screens/24_midterm_registration.dart';
import 'package:flutter_playground/Carias_Midterm_CCS2801/screens/24_midterm_signin.dart';
import 'package:flutter_playground/ccs2801/18_add_snackbar.dart';
import 'package:flutter_playground/ccs2801/19_add_navigation.dart';
import 'package:flutter_playground/ccs2801/20_add_text_form_field.dart';
import 'package:flutter_playground/ccs2801/22_compare_text_values.dart';
import 'package:flutter_playground/ccs2801/activity2.dart';
import 'package:flutter_playground/practice/screens/registration.dart';
import 'package:flutter_playground/practice/screens/sign_in.dart';
import 'package:flutter_playground/testings/columnrows.dart';
import 'package:flutter_playground/testings/image_test.dart';
import 'package:flutter_playground/testings/rows.dart';

import 'Carias_Final_CCS2801/main_screen.dart';

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
