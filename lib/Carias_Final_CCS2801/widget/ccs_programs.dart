import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';
import '../cards/program_card.dart';

class CCSPrograms extends StatelessWidget {
  const CCSPrograms({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Programs Offered'),
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
                  imagePath: 'assets/programs.png',
                ),

                SizedBox(height: 20),

                Text(
                  'PROGRAMS OFFERED',
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

                ProgramCard(
                  programName: 'Bachelor of Science in Computer Science',
                  description: 'BLABLABLABLABLABLA.',
                  icon: Icons.computer,
                ),

                SizedBox(height: 20),

                ProgramCard(
                  programName: 'Bachelor of Science in Information Technology',
                  description: 'BLABLABLABLABLABLA.',
                  icon: Icons.memory,
                ),

                SizedBox(height: 20),

                ProgramCard(
                  programName: 'Bachelor of Science in Digital Media Interactive Arts',
                  description: 'BLABLABLABLABLABLA.',
                  icon: Icons.art_track_rounded,
                ),

                SizedBox(height: 20),

                ProgramCard(
                  programName: 'Bachelor of Science in Book Library Information Science',
                  description: 'BLABLABLABLABLABLA.',
                  icon: Icons.bookmark,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
