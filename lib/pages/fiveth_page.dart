import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/pages/end_page.dart';

class FivethPage extends StatefulWidget {
  const FivethPage({super.key});

  @override
  State<FivethPage> createState() => _FivethPageState();
}

class _FivethPageState extends State<FivethPage> {
  final int correctAnswerIndex = 1;
  List<Color> buttonColors = [
    Colors.black54, // Python
    Colors.black54, // Java
    Colors.black54, // R
    Colors.black54, // SQL
  ];

  void handleButtonPress(int index) {
    setState(() {
      if (index == correctAnswerIndex) {
        buttonColors[index] = Colors.green; // Doğru cevap yeşil
      } else {
        buttonColors[index] = Colors.red; // Yanlış cevap kırmızı
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Question 5',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                )),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'In SQL, which command is used to change the structure of a table?',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 17),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[0],
                  ),
                  onPressed: () => handleButtonPress(0),
                  child: const Text('INSERT',
                      style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[1],
                  ),
                  onPressed: () => handleButtonPress(1),
                  child: const Text(
                    'ALTER',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[2],
                  ),
                  onPressed: () => handleButtonPress(2),
                  child: const Text('UPDATE',
                      style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[3],
                  ),
                  onPressed: () => handleButtonPress(3),
                  child: const Text('SELECT',
                      style: TextStyle(color: Colors.white)),
                ),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const EndPage()));
              },
              child: const Text(
                'Finish',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
