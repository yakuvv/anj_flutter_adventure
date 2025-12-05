import 'package:flutter/material.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_contacts.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_facilities.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_history.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_linkages.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_mission_vision.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_organzations.dart';
import 'package:flutter_playground/Carias_Final_CCS2801/widget/ccs_programs.dart';

import '../CCS2801_PRACTICE/02_buttons.dart';
import '../CCS2801_PRACTICE/03_image.dart';

class CCSMainScreen extends StatelessWidget {
  const CCSMainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CustomImage(
                    imagePath: 'assets/ccs_logo.png',
                  ),

                  SizedBox(height: 20),

                  Text(
                    'COLLEGE OF COMPUTER STUDIES',
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    textAlign: TextAlign.center,
                  ),

                  SizedBox(height: 20),

                  CustomButton(
                    text: 'COLLEGE HISTORY',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSHistory(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'MISSION AND VISION',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSMissionVision(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'PROGRAMS OFFERED',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSPrograms(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'ORGANIZATIONAL CHART',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSOrganizationalChart(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'FACILITIES',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSFacilities(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'LINKAGES',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSLinkages(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),

                  SizedBox(height: 10),

                  CustomButton(
                    text: 'CONTACT INFO',
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (builder) => CCSContact(),
                        ),
                      );
                    },
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
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