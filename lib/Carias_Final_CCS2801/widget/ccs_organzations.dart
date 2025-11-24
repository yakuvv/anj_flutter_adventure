import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';
import '../cards/position_card.dart';

class CCSOrganizationalChart extends StatelessWidget {
  const CCSOrganizationalChart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('Organizational Chart'),
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
                  'ORGANIZATIONAL CHART',
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

                Center(
                  child: CustomImage(
                    imagePath: 'assets/org_chart.png',
                  ),
                ),

                SizedBox(height: 30),

                PositionCard(
                  position: 'D E A N',
                  name: 'Ma. Christina A. Quijano, MSCS',
                  icon: Icons.person,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
