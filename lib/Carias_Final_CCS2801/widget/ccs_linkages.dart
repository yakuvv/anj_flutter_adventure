import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';
import '../cards/linkage_card.dart';

class CCSLinkages extends StatelessWidget {
  const CCSLinkages({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Linkages'),
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
                  imagePath: 'assets/linkages.png',
                ),

                SizedBox(height: 20),

                Text(
                  'INDUSTRY LINKAGES',
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

                SizedBox(height: 20),

                Text(
                  'Our college maintains strong partnerships with leading industry players to provide students with internship opportunities, workshops, and career development programs.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),

                LinkageCard(
                  companyName: 'ORACLE Academy',
                  partnership: 'BLABLABLABLA',
                  icon: Icons.business_center,
                ),

                SizedBox(height: 15),

                LinkageCard(
                  companyName: 'Cisco Networking Academy',
                  partnership: 'BLABLABLABLA',
                  icon: Icons.work,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
