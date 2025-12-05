import 'package:flutter/material.dart';
import '../widgets/add_text_form_fields.dart';

class AddTextFormFields extends StatefulWidget {
  const AddTextFormFields({super.key});

  @override
  State<AddTextFormFields> createState() => _AddTextFormFieldState();
}

class _AddTextFormFieldState extends State<AddTextFormFields> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 3'),
      ),
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                addTextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Name'),
                    hintText: 'Please provide your complete name.',
                    suffixIcon: Icon(Icons.person),
                  ),
                  label: 'loq',
                  hintText: 'loqq',
                  icon: Icons.wallet,
                ),

                SizedBox(height: 10),

                addTextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Name'),
                    hintText: 'Please provide your complete name.',
                    suffixIcon: Icon(Icons.person),
                  ),
                  label: 'afwef',
                  hintText: 'fwefwfw',
                  icon: Icons.wallet,
                ),

                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.clear,
                        size: 50,
                        color: Colors.yellow,
                      ),
                    ),

                    SizedBox(height: 10),

                    IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.save,
                        size: 50,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
