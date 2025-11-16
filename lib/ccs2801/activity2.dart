import 'package:flutter/material.dart';

class SignInScreen1 extends StatefulWidget {
  const SignInScreen1({super.key});

  @override
  State<SignInScreen1> createState() => _SignInScreen1State();
}

class _SignInScreen1State extends State<SignInScreen1> {
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
                Image.asset('assets/signin.png',  // I don't put assets sir,
                  // since i'm having error here and in my pubsec.yaml when
                  // including the assets directory with my image file name
                  // in here.
                  width: 1000,
                  height: 300,
                ),

                // CONTAINER for the line
                Container(
                  color: Colors.black12,
                  width: 10000,
                  height: 5,
                ),

                SizedBox(
                  height: 50,
                ),


                // Email
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Email Address'),
                    suffixIcon: Icon(Icons.email),
                  ),
                ),

                SizedBox(
                  height: 20,

                  // Password
                ),
                TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    label: Text('Password'),
                    suffixIcon: Icon(Icons.remove_red_eye),
                  ),
                ),

                SizedBox(
                  height: 20,
                ),

                // Sign In
                SizedBox(
                  width: 10000,
                  height: 50,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
