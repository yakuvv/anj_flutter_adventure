import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/01_text_fields.dart';
import '../../CCS2801_PRACTICE/02_buttons.dart';
import '../../CCS2801_PRACTICE/03_image.dart';
import '../cards/contact_info_card.dart';

class CCSContact extends StatefulWidget {
  const CCSContact({super.key});

  @override
  State<CCSContact> createState() => _CCSContactState();
}

class _CCSContactState extends State<CCSContact> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Contact Info'),
        backgroundColor: Colors.yellow,
        foregroundColor: Colors.black,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImage(
                  imagePath: 'assets/contact.png',
                ),

                SizedBox(height: 20),

                Text(
                  'GET IN TOUCH',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  color: Colors.yellow,
                  width: 10000,
                  height: 5,
                ),

                SizedBox(height: 30),

                ContactInfoCard(
                  icon: Icons.location_on,
                  title: 'Address',
                  info: 'Lopez Jaena St, Jaro, Iloilo City, Philippines',
                ),

                SizedBox(height: 15),

                ContactInfoCard(
                  icon: Icons.phone,
                  title: 'TELEPHONE',
                  info: '329-1971 local 1094',
                ),

                SizedBox(height: 15),

                ContactInfoCard(
                  icon: Icons.email,
                  title: 'Email',
                  info: 'ccs@cpu.edu.ph',
                ),

                SizedBox(height: 15),

                ContactInfoCard(
                  icon: Icons.web,
                  title: 'Website',
                  info: 'ccs.cpu.edu.ph',
                ),

                SizedBox(height: 30),

                Text(
                  'SEND US A MESSAGE',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 15),

                CustomTextField(
                  label: 'Name',
                  hintText: 'Enter your name',
                  icon: Icons.person,
                  controller: nameController,
                ),

                SizedBox(height: 15),

                CustomTextField(
                  label: 'Email',
                  hintText: 'Enter your email',
                  icon: Icons.email,
                  controller: emailController,
                ),

                SizedBox(height: 15),

                CustomTextField(
                  label: 'Message',
                  hintText: 'Enter your message',
                  icon: Icons.message,
                  controller: messageController,
                ),

                SizedBox(height: 20),

                Row(
                  children: [
                    Expanded(
                      child: CustomButton(
                        text: 'CLEAR',
                        onPressed: () {
                          nameController.clear();
                          emailController.clear();
                          messageController.clear();
                        },
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.black,
                      ),
                    ),

                    SizedBox(width: 10),

                    Expanded(
                      child: CustomButton(
                        text: 'SEND',
                        onPressed: () {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text('Message sent successfully!'),
                              backgroundColor: Colors.green,
                            ),
                          );
                          nameController.clear();
                          emailController.clear();
                          messageController.clear();
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
