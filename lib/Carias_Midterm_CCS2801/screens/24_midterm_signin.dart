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
  bool _obscurePassword = true;

  @override
  void dispose() {
    usernameController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _showSnackBar(String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(message),
        backgroundColor: Color(0xff0c71c3),
        behavior: SnackBarBehavior.floating,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        duration: Duration(seconds: 2),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xff0c71c3).withOpacity(0.1),
              Colors.white,
              Color(0xffe0ad3e).withOpacity(0.05),
            ],
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(24.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Logo Section
                  Hero(
                    tag: 'logo',
                    child: CustomImage(
                      imagePath: 'assets/SignInScreen.png',
                      height: 200,
                    ),
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
                      color: Colors.grey[600],
                      letterSpacing: 0.5,
                    ),
                  ),

                  SizedBox(height: 40),

                  // Divider Line
                  Container(
                    height: 3,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color(0xff0c71c3),
                          Color(0xffe0ad3e),
                        ],
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
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

                  // Password Field with visibility toggle
                  CustomTextField(
                    label: 'Password',
                    hintText: 'Enter your password',
                    icon: _obscurePassword
                        ? Icons.visibility_off_outlined
                        : Icons.visibility_outlined,
                    controller: passwordController,
                    obscureText: _obscurePassword,
                  ),

                  SizedBox(height: 12),

                  // Toggle Password Visibility
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton.icon(
                      onPressed: () {
                        setState(() {
                          _obscurePassword = !_obscurePassword;
                        });
                      },
                      icon: Icon(
                        _obscurePassword
                            ? Icons.visibility_off
                            : Icons.visibility,
                        size: 18,
                        color: Color(0xff0c71c3),
                      ),
                      label: Text(
                        _obscurePassword ? 'Show Password' : 'Hide Password',
                        style: TextStyle(
                          color: Color(0xff0c71c3),
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ),

                  SizedBox(height: 30),

                  // Clear Button
                  CustomButton(
                    text: 'CLEAR',
                    icon: Icons.clear_all,
                    onPressed: () {
                      usernameController.clear();
                      passwordController.clear();
                      _showSnackBar('Fields cleared');
                    },
                    backgroundColor: Colors.white,
                    foregroundColor: Color(0xff0c71c3),
                    isOutlined: true,
                  ),

                  SizedBox(height: 16),

                  // Sign In Button
                  CustomButton(
                    text: 'SIGN IN',
                    icon: Icons.login,
                    onPressed: () {
                      if (usernameController.text.isEmpty ||
                          passwordController.text.isEmpty) {
                        _showSnackBar('Please fill in all fields');
                      } else {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MidtermRegistration(),
                          ),
                        );
                      }
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
                          color: Colors.grey[600],
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
                    '© 2024 University Student Portal',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.grey[400],
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