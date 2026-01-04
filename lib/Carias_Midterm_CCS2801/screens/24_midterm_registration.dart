import 'package:flutter/material.dart';
import '../widgets/01_text_fields.dart';
import '../widgets/02_buttons.dart';
import '../widgets/03_image.dart';

class MidtermRegistration extends StatefulWidget {
  const MidtermRegistration({super.key});

  @override
  State<MidtermRegistration> createState() => _MidtermRegistrationState();
}

class _MidtermRegistrationState extends State<MidtermRegistration> {
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
      appBar: AppBar(
        title: Text('Student Registration'),
        backgroundColor: Color(0xff0c71c3),
        foregroundColor: Colors.white,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // header Image
                  CustomImage(
                    imagePath: 'assets/RegistrationScreen.png',
                    height: 200,
                  ),

                  SizedBox(height: 30),

                  // title
                  Text(
                    'STUDENT REGISTRATION',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0c71c3),
                      letterSpacing: 1.2,
                    ),
                  ),

                  SizedBox(height: 10),

                  Text(
                    'Create your account',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 30),

                  // divider Line
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Color(0xff0c71c3),
                  ),

                  SizedBox(height: 30),

                  // last Name Field
                  CustomTextField(
                    label: 'Last Name',
                    hintText: 'Enter your last name',
                    icon: Icons.person,
                    controller: lastNameController,
                  ),

                  SizedBox(height: 16),

                  // first Name Field
                  CustomTextField(
                    label: 'First Name',
                    hintText: 'Enter your first name',
                    icon: Icons.person_outline,
                    controller: firstNameController,
                  ),

                  SizedBox(height: 16),

                  // email Field
                  CustomTextField(
                    label: 'Email Address',
                    hintText: 'Enter your university email',
                    icon: Icons.email_outlined,
                    controller: emailController,
                  ),

                  SizedBox(height: 16),

                  // course Field
                  CustomTextField(
                    label: 'Course',
                    hintText: 'e.g., Computer Science',
                    icon: Icons.school_rounded,
                    controller: courseController,
                  ),

                  SizedBox(height: 16),

                  // year Field
                  CustomTextField(
                    label: 'Year Level',
                    hintText: 'e.g., 1st Year, 2nd Year',
                    icon: Icons.date_range_sharp,
                    controller: yearController,
                  ),

                  SizedBox(height: 16),

                  // department Field
                  CustomTextField(
                    label: 'Department',
                    hintText: 'Enter your department',
                    icon: Icons.admin_panel_settings_outlined,
                    controller: departmentController,
                  ),

                  SizedBox(height: 16),

                  // college Field
                  CustomTextField(
                    label: 'College',
                    hintText: 'Enter your college',
                    icon: Icons.school_outlined,
                    controller: collegeController,
                  ),

                  SizedBox(height: 30),

                  // clear Button
                  CustomButton(
                    text: 'CLEAR',
                    icon: Icons.clear_all,
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
                    foregroundColor: Color(0xff0c71c3),
                    isOutlined: true,
                  ),

                  SizedBox(height: 16),

                  // submit Button
                  CustomButton(
                    text: 'SUBMIT',
                    icon: Icons.check_circle,
                    onPressed: () {
                      // check if all fields are filled
                      if (lastNameController.text.isEmpty ||
                          firstNameController.text.isEmpty ||
                          emailController.text.isEmpty ||
                          courseController.text.isEmpty ||
                          yearController.text.isEmpty ||
                          departmentController.text.isEmpty ||
                          collegeController.text.isEmpty) {

                        // will show error dialog if fields are empty
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Error'),
                            content: Text('Please fill in all fields!'),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Text('OK'),
                              ),
                            ],
                          ),
                        );
                      } else {
                        // will show success dialog if all fields are filled
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text('Success!'),
                            content: Text(
                              'Welcome, ${firstNameController.text} ${lastNameController.text}!\n\nRegistration Completed.\n\nYou will be redirected to the sign-in page.',
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                  Navigator.pop(context);
                                },
                                child: Text('Continue'),
                              ),
                            ],
                          ),
                        );
                      }
                    },
                    backgroundColor: Color(0xff0c71c3),
                    foregroundColor: Colors.white,
                  ),

                  SizedBox(height: 30),

                  // Sign In Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already have an account? ',
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'Sign In',
                          style: TextStyle(
                            color: Color(0xffe0ad3e),
                            fontWeight: FontWeight.bold,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}