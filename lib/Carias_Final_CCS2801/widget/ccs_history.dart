import 'package:flutter/material.dart';
import '../../CCS2801_PRACTICE/03_image.dart';

class CCSHistory extends StatelessWidget {
  const CCSHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('College History'),
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
                  imagePath: 'assets/ccs_history.png',
                ),

                SizedBox(height: 20),

                Text(
                  'OUR HISTORY',
                  style: TextStyle(
                    fontSize: 28,
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
                  'The college began in 1995 with the birth of the '
                      'Bachelor of Science in Computer Science (BSCS) program under the College of Commerce. The first batch of'
                      'students was composed of two sections with about 100 students headed by Prof. Mary O’ T. Penetrante.',
                  style: TextStyle(
                    fontSize: 15,
                    height: 1,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: 20),

                Text(
                  'As time progressed, a lot of changes were upheld in the College '
                      'with the programs it offers, as well as its facilities. As Dr. Calibjo completed his '
                      'Doctoral degree, he then came back to the College of Computer Studies as the Dean and allowed more exciting things to happen. ',
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