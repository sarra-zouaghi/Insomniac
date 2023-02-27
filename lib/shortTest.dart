import 'package:flutter/material.dart';

class ShortTest extends StatefulWidget {
  const ShortTest({super.key});

  @override
  State<ShortTest> createState() => _ShortTestState();
}

class _ShortTestState extends State<ShortTest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Center(
        child: Container(
          child: Text('Short'),
        ),
      ),
    );
  }
}

// class CustomText extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container();
//   }
// }
