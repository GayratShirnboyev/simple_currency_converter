// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unnecessary_const

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 150),
              child: Text(
                'Result:',
                style: TextStyle(
                  fontSize: 34,
                  color: Color.fromARGB(100, 174, 174, 174),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 15),
              child: Text(
                '\$100',
                style: TextStyle(
                  fontSize: 64,
                  color: Color.fromARGB(100, 107, 107, 107),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
              child: TextField(
                decoration: InputDecoration(
                    label: Text('Amout'),
                    border: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Color.fromARGB(100, 107, 107, 107)))),
              ),
            )
          ],
        ),
      )),
    );
  }
}
