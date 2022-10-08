import 'dart:developer';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  var index = 0;

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What's your favourite colour?",
      "What's your favourite animal?",
    ];
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'My Home Page',
        ),
      ),
      body: Column(
        children: [
          // QUESTION
          Text(
            questions[index],
          ),
          // OPTION 1
          ElevatedButton(
            onPressed: () {
              log('1 pressed');
              setState(() {
                index++;
              });
            },
            child: const Text(
              'Option 1',
            ),
          ),
          // OPTION 2
          ElevatedButton(
            onPressed: () {
              log('2 pressed');
              setState(() {
                index++;
              });
            },
            child: const Text(
              'Option 2',
            ),
          ),
          // OPTION 3
          ElevatedButton(
            onPressed: () {
              log('3 pressed');
              setState(() {
                index++;
              });
            },
            child: const Text(
              'Option 3',
            ),
          ),
        ],
      ),
    );
  }
}
