import 'package:flutter/material.dart';

import '../../CCS2801_PRACTICE/03_image.dart';


class FacilityCard extends StatelessWidget {
  final String facilityName;
  final String description;
  final IconData icon;
  final String imagePath;

  const FacilityCard({
    super.key,
    required this.facilityName,
    required this.description,
    required this.icon,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  icon,
                  size: 30,
                  color: Colors.yellow,
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    facilityName,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),

            CustomImage(imagePath: imagePath),
            SizedBox(height: 10),
            Text(
              description,
              style: TextStyle(
                fontSize: 14,
                height: 1.4,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}