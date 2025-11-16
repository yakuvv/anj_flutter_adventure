import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const ColumnRows(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ColumnRows extends StatelessWidget {
  const ColumnRows({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(100),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                color: Colors.white,
                height: 104,
                width: 100,
              ),
              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.purple,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color: Colors.pinkAccent,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color: Colors.black,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(height: 10,),
                  ]
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.blue,
                height: 104,
                width: 100,
              ),
              SizedBox(height: 10),
              Container(
                color: Colors.pink,
                height: 104,
                width: 100,
              ),
              SizedBox(height: 10),

              Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,

                  children: [
                    Container(
                      color: Colors.purple,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color: Colors.green,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(width: 10,),
                    Container(
                      color: Colors.black,
                      height: 104,
                      width: 100,
                    ),
                    SizedBox(height: 10,),
                  ]
              ),
            ],
          ),
        ),
      ),
    );
  }
}
