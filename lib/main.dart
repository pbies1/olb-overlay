// Copyright (c) 2019, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

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
  late int _counter1;
  late int _counter2;
  late Stream<DocumentSnapshot<Map<String, dynamic>>> docRef;

  @override
  void initState() {
    super.initState();
    docRef = FirebaseFirestore.instance
        .collection("counters")
        .doc("counter")
        .snapshots();

    _counter1 = 0;
    _counter2 = 0;
  }

  final borderRadius = BorderRadius.circular(20);
  @override
  Widget build(BuildContext context) {
    docRef.listen((event) {
      setState(() {
        _counter1 = event.data()?['c1'];
        _counter2 = event.data()?['c2'];
      });
    });

    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 37, 37, 37),
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
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.3,
                                  0.7,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 10, 10, 10),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 15, 15, 15),
                                ],
                              )),
                          child: Text(
                            '$_counter1',
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
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.5,
                                  0.6,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 20, 20, 20),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 20, 20, 20),
                                ],
                              )),
                          child: ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('counters')
                                  .doc('counter')
                                  .set({'c1': _counter1 + 1, 'c2': _counter2});
                            },
                            child: const Icon(Icons.add, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 279,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.5,
                                  0.6,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 20, 20, 20),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 20, 20, 20),
                                ],
                              )),
                          child: ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('counters')
                                  .doc('counter')
                                  .set({'c1': _counter1 - 1, 'c2': _counter2});
                            },
                            child:
                                const Icon(Icons.remove, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                          ),
                        ),
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
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.3,
                                  0.7,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 10, 10, 10),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 10, 10, 10),
                                ],
                              )),
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
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.5,
                                  0.6,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 20, 20, 20),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 20, 20, 20),
                                ],
                              )),
                          child: ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('counters')
                                  .doc('counter')
                                  .set({'c1': _counter1, 'c2': _counter2 + 1});
                            },
                            child: const Icon(Icons.add, color: Colors.white),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 279,
                        child: Container(
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                              gradient: const LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [
                                  0.05,
                                  0.5,
                                  0.6,
                                  1.0,
                                ],
                                colors: [
                                  Color.fromARGB(255, 20, 20, 20),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 37, 37, 37),
                                  Color.fromARGB(255, 20, 20, 20),
                                ],
                              )),
                          child: ElevatedButton(
                            onPressed: () {
                              FirebaseFirestore.instance
                                  .collection('counters')
                                  .doc('counter')
                                  .set({'c1': _counter1, 'c2': _counter2 - 1});
                            },
                            child: const Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                            style: ElevatedButton.styleFrom(
                                primary: Colors.transparent,
                                shadowColor: Colors.transparent),
                          ),
                        ),
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
