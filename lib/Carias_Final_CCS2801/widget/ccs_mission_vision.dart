import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';

class CCSMissionVision extends StatelessWidget {
  const CCSMissionVision({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Mission and Vision'),
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
                  imagePath: 'assets/mission_vision.png',
                ),

                SizedBox(height: 30),

                Text(
                  'VISION',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  color: Colors.yellow,
                  width: 1000,
                  height: 5,
                ),

                SizedBox(height: 15),

                Text(
                  'The College of Computer Studies is founded on the vision of academic excellence in Information Technology Education '
                      'and responsive to the needs of the total person and the world.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 30),

                Text(
                  'MISSION',
                  style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),

                SizedBox(height: 10),

                Container(
                  color: Colors.yellow,
                  width: 1000,
                  height: 5,
                ),

                SizedBox(height: 15),

                Text(
                  'To provide quality education in computer science and '
                      'information technology, develop competent professionals, and '
                      'contribute to technological advancement through research and innovation.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}