import 'package:flutter/material.dart';

class LongTest extends StatefulWidget {
  const LongTest({super.key});

  @override
  State<LongTest> createState() => _LongTestState();
}

class _LongTestState extends State<LongTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        child: Text('Long'),
      ),
    );
  }
}
