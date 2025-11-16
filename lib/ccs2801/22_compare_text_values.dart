import 'package:flutter/material.dart';

import '../widgets/add_text_form_fields.dart';

class CompareTextValues extends StatefulWidget {
  const CompareTextValues({super.key});

  @override
  State<CompareTextValues> createState() => _CompareTextValueState();
}

class _CompareTextValueState extends State<CompareTextValues> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Center(
        child: Column(
          children: [
            Text('Read Text Values'.toUpperCase(),
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  addTextFormField(
                    label: 'hi',
                    hintText: 'hhell',
                    icon: Icons.ac_unit_outlined,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Name'),
                      hintText: 'Please provide your complete name.',
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),

                  addTextFormField(
                    label: 'hoorwe',
                    hintText: 'hrwrwrwrl',
                    icon: Icons.access_time,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Name'),
                      hintText: 'Please provide your complete name.',
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      ),
    );
  }
}

