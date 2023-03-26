import 'package:flutter/material.dart';

class LongTest extends StatefulWidget {
  const LongTest({super.key});

  @override
  State<LongTest> createState() => _LongTestState();
}

class _LongTestState extends State<LongTest> {
  int _currentIndex = 0;
  final List<Map<String, dynamic>> _questions = [
    {
      "question": "Difficulty falling asleep",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    {
      "question": "Difficulty staying asleep",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    {
      "question": "Problems waking up too early",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    {
      "question":
          "How satisfied/dissatisfied are you with your current sleep pattern?",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    {
      "question":
          "How noticeable to others do you think your sleep problem is in terms of impairing the quality of your life?",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    {
      "question":
          "How worried/distressed are you about your current sleep problem?",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },

    {
      "question":
          "To what extent do you consider your sleep problem to interfere with your daily functioning (e.g. daytime fatigue, ability to function at work/daily chores)?",
      "type": "options",
      "options": ["0", "1", "2", "3", "4"]
    },
    //PSQI

    {
      "question":
          "During the past month, what time have you usually gone to bed at night?",
      "type": "text"
    },
    {
      "question":
          'During the past month, how long (in minutes) has it usually taken you to fall asleep each night?',
      "type": "text"
    },
    {
      "question":
          "During the past month, what time have you usually gotten up in the morning?",
      "type": "text"
    },
    {
      "question":
          'How much time (in minutes) do you usually spend awake at night (after first falling asleep)?',
      "type": "text"
    },
    {
      "question":
          'During the past month, how many hours of actual sleep did you get at night?  (This may be different than the number of hours you spent in bed.)',
      "type": "text"
    },
    {
      "question":
          'Cannot get to sleep within 30 minutes (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Wake up in the middle of the night or early morning (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Have to get up to use the bathroom (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Cannot breathe comfortably (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Cough or snore loudly (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          ' Feel too cold (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Feel too hot (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Have bad dreams (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Have pain (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'Are there other reasons you have had trouble sleeping in the past month? (0=No, 1=Yes)',
      "type": "options",
      "options": ["0", "1"]
    },
    {
      "question":
          'How often during the past month have you had trouble sleeping because of this? (IF NO OTHER REASONS SELECT - Not during the past month) (0=Not during the past month,1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week) ',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'During the past month, how often have you taken medicine to help you sleep (prescribed or over the counter)? (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'During the past month, how often have you had trouble staying awake while driving, eating meals, or engaging in social activity? (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'During the past month, how much of a problem has it been for you to keep up enough enthusiasm to get things done? (0=Not during the past month, 1=Less than once a week, 2=Once or twice a week, 3=Three or more times a week)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    },
    {
      "question":
          'During the past month, how would you rate your sleep quality overall? (0=Very good, 1=Fairly good, 2=Fairly bad, 3=Very bad)',
      "type": "options",
      "options": ["0", "1", "2", "3"]
    }
  ];

  final Map<int, int> _answers = {};

 void _handleOptionSelected(int? value) {
  // Check if the current question requires a TextField
  if (_questions[_currentIndex]['type'] == "text") {
    // Check if a valid input has been provided
    if (_answers[_currentIndex] != null && _answers[_currentIndex] != '') {
      _moveToNextQuestion();
    }
  } else {
    setState(() {
      _answers[_currentIndex] = value ?? 0;
      _moveToNextQuestion();
    });
  }
}

void _moveToNextQuestion() {
  if (_currentIndex < _questions.length - 1) {
    _currentIndex++;
  } else {
    // Enable the "Show Result" button when all questions have been answered
    _showResultButtonEnabled = true;
  }
}



  bool _showResultButtonEnabled = false;

  void _handleShowResultPressed() {
    // Calculate the total score based on the user's answers
    int totalScore = _answers.values.fold(0, (prev, score) => prev + score);

    // Determine if the user is an insomniac based on the total score
    bool isInsomniac = totalScore >= 20;
    // Show a dialog with the result
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text("Result"),
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
        title: Text("Long Test"),
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
            Column(
              children: [
                Text(_questions[_currentIndex]["question"]),
                if (_questions[_currentIndex]["type"] == "text")
                  TextField(
                    onChanged: (text) {
                        print('submitting answer: $text');

                      // Save the text input to the answers list
                      try {
                               _answers[_currentIndex] = int.parse(text);

                      } catch (e) {
                            print('Error parsing input: $e');

                      }
                    },
                  ),
                if (_questions[_currentIndex]["type"] == "options")
                  Column(
                    children:
                        (_questions[_currentIndex]["options"] as List<String>)
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
              ],
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
