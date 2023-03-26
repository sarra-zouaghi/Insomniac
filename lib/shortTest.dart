import 'package:flutter/material.dart';

class ShortTest extends StatefulWidget {
  const ShortTest({super.key});

  @override
  State<ShortTest> createState() => _ShortTestState();
}

class _ShortTestState extends State<ShortTest> {
  int _currentIndex = 0;
  final List<String> _questions = [
    "Difficulty falling asleep",
    "Difficulty staying asleep",
    "Problems waking up too early",
    "How satisfied/dissatisfied are you with your current sleep pattern?",
    "How noticeable to others do you think your sleep problem is in terms of impairing the quality of your life?",
    "How worried/distressed are you about your current sleep problem?",
    "To what extent do you consider your sleep problem to interfere with your daily functioning (e.g. daytime fatigue, ability to function at work/daily chores)?",
  ];
  final List<String> _options = [
    "0",
    "1",
    "2",
    "3",
    "4",
  ];
Map<int, int> _answers = {};

  void _handleOptionSelected(int? value) {
    setState(() {
      _answers[_currentIndex] = value ?? 0;
      if (_currentIndex < _questions.length - 1) {
        _currentIndex++;
      } else {
        // Enable the "Show Result" button when all questions have been answered
        _showResultButtonEnabled = true;
      }
    });
  }

  bool _showResultButtonEnabled = false;

  void _handleShowResultPressed() {
    // TODO: Navigate to results page or calculate results
    // Calculate the total score based on the user's answers
    int totalScore = _answers.values.fold(0, (prev, score) => prev + score);

    // Determine if the user is an insomniac based on the total score
    bool isInsomniac = totalScore >= 10;
 // Show a dialog with the result
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Result"),
          content: Text(
            "You are ${isInsomniac ? "" : "not "}an insomniac.",
          ),
          actions: [
            TextButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }
void _handleRestartPressed() {
    setState(() {
      _answers.clear();
      _currentIndex = 0;
      _showResultButtonEnabled = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 108, 6, 117),
        title: Text("Short Test"),
      ),
      body: Container(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Question ${_currentIndex + 1}",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 18.0,
              ),
            ),
            SizedBox(height: 8.0),
            Text(
              _questions[_currentIndex],
              style: TextStyle(fontSize: 16.0),
            ),
            SizedBox(height: 16.0),
            Column(
              children: _options
                  .asMap()
                  .entries
                  .map(
                    (entry) => RadioListTile<int>(
                      title: Text(entry.value),
                      value: entry.key + 1,
                      groupValue: _answers[_currentIndex],
                      onChanged: _handleOptionSelected,
                    ),
                  )
                  .toList(),
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 30),
                      fixedSize: Size(100, 30),
                      backgroundColor: Color.fromARGB(255, 108, 6, 117),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Restart"),
                  onPressed: _handleRestartPressed,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(150, 30),
                      fixedSize: Size(100, 30),
                      backgroundColor: Color.fromARGB(255, 108, 6, 117),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20))),
                  child: Text("Show Result"),
                  onPressed: _showResultButtonEnabled
                      ? _handleShowResultPressed
                      : null,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

