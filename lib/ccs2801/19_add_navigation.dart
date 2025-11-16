import 'package:flutter/material.dart';
import '18_add_snackbar.dart';
import '20_add_text_form_field.dart';


class AddNavigations extends StatefulWidget {
  const AddNavigations({super.key});

  @override
  State<AddNavigations> createState() => _AddNavigationState();
}

class _AddNavigationState extends State<AddNavigations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
        leading: Icon(Icons.menu),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Text(
                'Screen 1'.toUpperCase(),
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                            builder: (builder) => AddSnackBars(),
                          )
                      );
                    },
                    label: Text('Screen 2'),
                    icon: Icon(Icons.arrow_right_alt),
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(5)
                      ),
                      ),
                    ),
                  ),

                  ElevatedButton.icon(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(
                              builder: (builder) => AddTextFormFields()
                          )
                      );
                    },

                    label: Text('Screen 3'),
                    icon: Icon(Icons.arrow_right_alt),
                    style: ButtonStyle(
                      shape: WidgetStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadiusGeometry.circular(5)
                      ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

