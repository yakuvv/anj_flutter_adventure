import 'package:flutter/material.dart';

class RegistrationForm extends StatefulWidget {
  const RegistrationForm({super.key});

  @override
  State<RegistrationForm> createState() => _RegistrationFormState();
}

class _RegistrationFormState extends State<RegistrationForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.00),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/signin.png',
                    width: 1000,
                    height: 500,
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Last Name'),
                      suffixIcon: Icon(Icons.person),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('First Name'),
                      suffixIcon: Icon(Icons.person_2_rounded),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Email Address'),
                      suffixIcon: Icon(Icons.email_outlined),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Course'),
                      suffixIcon: Icon(Icons.school_rounded),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Year'),
                      suffixIcon: Icon(Icons.date_range_sharp),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('Department'),
                      suffixIcon: Icon(Icons.admin_panel_settings),
                    ),
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      label: Text('College'),
                      suffixIcon: Icon(Icons.add_card),
                    ),
                  ),

                  SizedBox(height: 20),

                  Row(
                    children: [
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Clear button action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            side: BorderSide(color: Colors.grey),
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Text(
                            'Clear',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                      SizedBox(width: 20),
                      Expanded(
                        child: ElevatedButton(
                          onPressed: () {
                            // Submit button action
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.blue,
                            foregroundColor: Colors.white,
                            padding: EdgeInsets.symmetric(vertical: 15),
                          ),
                          child: Text(
                            'Submit',
                            style: TextStyle(fontSize: 16),
                          ),
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
