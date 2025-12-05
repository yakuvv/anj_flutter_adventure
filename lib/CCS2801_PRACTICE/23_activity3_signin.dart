import 'package:flutter/material.dart';
import '01_text_fields.dart';
import '02_buttons.dart';
import '03_image.dart';
import '23_activity3_registration.dart';

class Activity3SignIn extends StatefulWidget {
  const Activity3SignIn({super.key});

  @override
  State<Activity3SignIn> createState() => _Activity3SignInState();
}

class _Activity3SignInState extends State<Activity3SignIn> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.00),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImage(
                  imagePath: 'assets/SignInScreen.png',
                ),

                Container(
                  color: Colors.black12,
                  width: 10000,
                  height: 5,
                ),

                SizedBox(
                  height: 50,
                ),

                CustomTextField(
                  label: 'Username',
                  hintText: 'Please provide your username.',
                  icon: Icons.person,
                  controller: usernameController,
                ),

                SizedBox(
                  height: 20,
                ),

                CustomTextField(
                  label: 'Password',
                  hintText: 'Please provide your password.',
                  icon: Icons.password_outlined,
                  controller: passwordController,
                ),

                SizedBox(
                  height: 20,
                ),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'CLEAR',
                        onPressed: () {
                          usernameController.clear();
                          passwordController.clear();
                        },
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),

                    SizedBox(
                      width: 10,
                    ),

                    Expanded(
                      child: CustomButton(
                        text: 'SIGN IN',
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (builder) => Activity3Registration(),
                            ),
                          );
                        },
                        backgroundColor: Colors.yellow,
                        foregroundColor: Colors.black,
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


