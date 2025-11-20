import 'package:flutter/material.dart';
import '01_text_fields.dart';
import '02_buttons.dart';
import '03_image.dart';
import '23_activity3_signin.dart';

class Activity3Registration extends StatefulWidget {
  const Activity3Registration({super.key});

  @override
  State<Activity3Registration> createState() => _Activity3RegistrationState();
}

class _Activity3RegistrationState extends State<Activity3Registration> {
  final TextEditingController lastNameController = TextEditingController();
  final TextEditingController firstNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController courseController = TextEditingController();
  final TextEditingController yearController = TextEditingController();
  final TextEditingController departmentController = TextEditingController();
  final TextEditingController collegeController = TextEditingController();

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
                  CustomImage(
                    imagePath: 'assets/RegistrationScreen.png',
                      width: 10000,
                    height: 100,
                  ),

                  SizedBox(
                    height: 40,
                  ),

                  CustomTextField(
                    label: 'Last Name',
                    hintText: 'Please provide your last name.',
                    icon: Icons.person,
                    controller: lastNameController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'First Name',
                    hintText: 'Please provide your first name.',
                    icon: Icons.person_2_rounded,
                    controller: firstNameController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'Email Address',
                    hintText: 'Please provide your email address.',
                    icon: Icons.email_outlined,
                    controller: emailController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'Course',
                    hintText: 'Please provide your course.',
                    icon: Icons.school_rounded,
                    controller: courseController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'Year',
                    hintText: 'Please provide your year.',
                    icon: Icons.date_range_sharp,
                    controller: yearController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'Department',
                    hintText: 'Please provide your department.',
                    icon: Icons.admin_panel_settings,
                    controller: departmentController,
                  ),

                  SizedBox(
                    height: 20,
                  ),

                  CustomTextField(
                    label: 'College',
                    hintText: 'Please provide your college.',
                    icon: Icons.add_card,
                    controller: collegeController,
                  ),

                  SizedBox(height: 20),

                  CustomButton(
                    text: 'CLEAR',
                    onPressed: () {
                      lastNameController.clear();
                      firstNameController.clear();
                      emailController.clear();
                      courseController.clear();
                      yearController.clear();
                      departmentController.clear();
                      collegeController.clear();
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'SUBMIT',
                    onPressed: () {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text(
                              'Registration submitted successfully.'
                          ),
                          action: SnackBarAction(label: 'OK', onPressed: (){
                            showDialog(context: context, builder: (context) => AlertDialog(
                              content: Text('Your registration has been submitted.'),
                            ),
                            );
                          }
                          ),
                        ),
                      );
                    },
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                      text: 'SIGN IN',
                      onPressed: () {
                    Navigator.push(
                      context,
                        MaterialPageRoute(
                            builder: (builder) =>
                        Activity3SignIn(),
                    ),
                    );
                      },
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
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