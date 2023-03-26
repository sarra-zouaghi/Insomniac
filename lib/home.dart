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
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/bg.png'), fit: BoxFit.cover)),
        padding: EdgeInsets.only(bottom: 130),
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Insomniac',
                style: TextStyle(
                    fontFamily: 'Signatra', fontSize: 80, color: Colors.white)),
            const Padding(
              padding: EdgeInsets.all(20),
              child: Text(
                  'Insomniac is a user-friendly tool designed to help individuals with the diagnosis of insomnia.\nThe app features a collection of questions and utilizes ML algorithms to analyze the responses to the questions and provide a personalized assessment of the likelihood of an individual having insomnia.\nInsomniac offers two testing options to aid in th diagosis of insomnia: a long test and a short test',
                  style: TextStyle(
                      fontFamily: 'Halfmoon-Bold',
                      fontSize: 15,
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
