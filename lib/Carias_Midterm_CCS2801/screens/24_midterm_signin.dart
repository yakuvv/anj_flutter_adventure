import 'package:flutter/material.dart';
import '../widgets/01_text_fields.dart';
import '../widgets/02_buttons.dart';
import '../widgets/03_image.dart';
import '24_midterm_registration.dart';

class MidtermSignIn extends StatefulWidget {
  const MidtermSignIn({super.key});

  @override
  State<MidtermSignIn> createState() => _MidtermSignInState();
}

class _MidtermSignInState extends State<MidtermSignIn> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool _hidePassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo Image
                  CustomImage(
                    imagePath: 'assets/SignInScreen.png',
                    height: 200,
                  ),

                  SizedBox(height: 40),

                  // Welcome Text
                  Text(
                    'WELCOME BACK',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff0c71c3),
                      letterSpacing: 1.5,
                    ),
                  ),

                  SizedBox(height: 8),

                  Text(
                    'Sign in to continue',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 40),

                  // Divider Line
                  Container(
                    height: 3,
                    width: double.infinity,
                    color: Color(0xff0c71c3),
                  ),

                  SizedBox(height: 40),

                  // Username Field
                  CustomTextField(
                    label: 'Username',
                    hintText: 'Enter your username',
                    icon: Icons.person_outline,
                    controller: usernameController,
                  ),

                  SizedBox(height: 20),

                  // Password Field
                  CustomTextField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    icon: Icons.lock_outline,
                    controller: passwordController,
                    obscureText: _hidePassword,
                  ),

                  SizedBox(height: 12),

                  // Show/Hide Password Button
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          _hidePassword = !_hidePassword;
                        });
                      },
                      icon: Icon(
                        _hidePassword ? Icons.visibility_off : Icons.visibility,
                        size: 18,
                        color: Color(0xff0c71c3),
                      ),
                      label: Text(
                        _hidePassword ? 'Show Password' : 'Hide Password',
                        style: TextStyle(
                          color: Color(0xff0c71c3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 20),

                  // Clear Button
                  CustomButton(
                    text: 'CLEAR',
                    icon: null,
                    onPressed: () {
                      usernameController.clear();
                      passwordController.clear();
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xff0c71c3),
                    isOutlined: true,
                  ),

                  SizedBox(height: 16),

                  // Sign In Button
                  CustomButton(
                    text: 'SIGN IN',
                    icon: null,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MidtermRegistration(),
                        ),
                      );
                    },
                    backgroundColor: Color(0xff0c71c3),
                    foregroundColor: Colors.white,
                  ),

                  SizedBox(height: 30),

                  // Register Link
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Don't have an account? ",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => MidtermRegistration(),
                            ),
                          );
                        },
                        child: Text(
                          'Register Now',
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

                  // Footer
                  Text(
                    '© 2024 Central Philippine University Student Portal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 12,
                    ),
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