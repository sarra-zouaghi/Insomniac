import 'package:Insomniac/longTest.dart';
import 'package:Insomniac/shortTest.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Container(
        padding: EdgeInsets.only(bottom: 130),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Insomniac',
                style: TextStyle(
                    fontFamily: 'Signatra', fontSize: 80, color: Colors.white)),
            const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Start Your Test',
                  style: TextStyle(
                      fontFamily: 'Halfmoon-Bold',
                      fontSize: 20,
                      color: Colors.white)),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => ShortTest()));
                },
                child: Text(
                  'Short Test',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 30),
                    fixedSize: Size(100, 30),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
            Container(
              margin: EdgeInsets.all(8),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => LongTest()));
                },
                child: Text(
                  'Long Test',
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 30),
                    fixedSize: Size(100, 30),
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
