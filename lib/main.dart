// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'Tefnut Was Here'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;

  const MyHomePage({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter2 = 0;
  int _counter = 0;
  final borderRadius = BorderRadius.circular(20);
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _incrementCounter2() {
    setState(() {
      _counter--;
    });
  }

  void _incrementCounter3() {
    setState(() {
      _counter2++;
    });
  }

  void _incrementCounter4() {
    setState(() {
      _counter2--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color.fromARGB(255, 37, 37, 37),
        body: SizedBox(
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0, color: Color.fromARGB(255, 129, 129, 129)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                            decoration: BoxDecoration(
                              border: Border.all(
                                  width: 1,
                                  color: Color.fromARGB(255, 0, 0, 0)),
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                            child: Image.asset(
                                'assets/images/OLB_scorecardv2.png')),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                            color: const Color.fromARGB(255, 37, 37, 37),
                          ),
                          child: Text(
                            '$_counter',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 130.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 279,
                        child: ElevatedButton(
                            onPressed: _incrementCounter,
                            child: const Icon(Icons.add, color: Colors.white),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 37, 37, 37)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(
                                            
                                            color: Color.fromARGB(
                                                255, 0, 0, 0)))))),
                      ),
                      SizedBox(
                        width: 279,
                        child: ElevatedButton(
                            onPressed: _incrementCounter2,
                            child:
                                const Icon(Icons.remove, color: Colors.white),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 37, 37, 37)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(
                                           
                                            color: Color.fromARGB(
                                                255, 0, 0, 0)))))),
                      ),
                    ],
                  ),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                child: Column(children: [
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                          width: 0, color: Color.fromARGB(255, 129, 129, 129)),
                      color: Color.fromARGB(255, 0, 0, 0),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                            color: Color.fromARGB(255, 0, 0, 0),
                          ),
                          child: Image.asset('assets/images/PF_scorecard.png'),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                                width: 1, color: Color.fromARGB(255, 0, 0, 0)),
                            color: const Color.fromARGB(255, 37, 37, 37),
                          ),
                          child: Text(
                            '$_counter2',
                            style: const TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 130.5),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: 279,
                        child: ElevatedButton(
                            onPressed: _incrementCounter3,
                            child: const Icon(Icons.add, color: Colors.white),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 37, 37, 37)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(
                                            
                                            color: Color.fromARGB(
                                                255, 0, 0, 0)))))),
                      ),
                      SizedBox(
                        width: 279,
                        child: ElevatedButton(
                            onPressed: _incrementCounter4,
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            style: ButtonStyle(
                                backgroundColor: MaterialStateProperty.all(
                                    const Color.fromARGB(255, 37, 37, 37)),
                                shape: MaterialStateProperty.all<
                                        RoundedRectangleBorder>(
                                    const RoundedRectangleBorder(
                                        borderRadius: BorderRadius.zero,
                                        side: BorderSide(
                                           
                                            color: Color.fromARGB(
                                                255, 0, 0, 0)))))),
                      ),
                    ],
                  ),
                ]),
              ),
            ],
          ),
        ));
  }
}
