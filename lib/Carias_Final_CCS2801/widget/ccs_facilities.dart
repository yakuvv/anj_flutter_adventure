import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';
import '../cards/facilities_card.dart';


class CCSFacilities extends StatelessWidget {
  const CCSFacilities({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Facilities'),
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
                Text(
                  'OUR FACILITIES',
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

                FacilityCard(
                  facilityName: 'Computer Laboratories',
                  description: 'BLABLABLABLABLA',
                  icon: Icons.computer,
                  imagePath: 'assets/lab.png',
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
