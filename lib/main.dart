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

TextEditingController text1 = TextEditingController(text: '');

class _MyAppState extends State<MyApp> {
  String name = '0';
  double a = 0;
  String toCurrency = '🇺🇸';
  String fromCurrency = '🇺🇿';

  func() {
    a = double.parse(text1.text) * 0.00011085;
    setState(() {
      name = '\$${a.toStringAsPrecision(2)}';
    });
  }

  @override
  Widget build(BuildContext context) {
    //String name=text1.text;
    return MaterialApp(
      home: Scaffold(
          resizeToAvoidBottomInset: false,
          body: Column(
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
                  name,
                  style: TextStyle(
                    fontSize: 64,
                    color: Color.fromARGB(100, 107, 107, 107),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 100, left: 20, right: 20),
                child: TextField(
                  controller: text1,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      label: Text('Amount'),
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(
                              color: Color.fromARGB(100, 107, 107, 107)))),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('From'),
                        Text(
                          fromCurrency,
                          style: TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                    IconButton(
                      padding: EdgeInsets.zero,
                      onPressed: () {
                        setState(() {
                          String tmp = toCurrency;
                          toCurrency = fromCurrency;
                          fromCurrency = tmp;
                        });
                      },
                      icon: Icon(
                        Icons.sync_alt,
                        size: 50,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('To'),
                        Text(
                          toCurrency,
                          style: TextStyle(fontSize: 60),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: ElevatedButton(
                    onPressed: func,
                    child: Text(
                      'CONVERT',
                      style: TextStyle(fontSize: 25),
                    ),
                    style: ElevatedButton.styleFrom(
                        minimumSize: Size.fromHeight(60))),
              )
            ],
          )),
    );
  }
}
