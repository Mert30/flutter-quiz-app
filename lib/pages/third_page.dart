import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/pages/fourth_page.dart';

class ThirdPage extends StatefulWidget {
  const ThirdPage({super.key});

  @override
  State<ThirdPage> createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
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
            const Text('Question 3',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 300,
              child: Text(
                'Which programming language defines null as None?',
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
                  child:
                      const Text('Java', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[1],
                  ),
                  onPressed: () => handleButtonPress(1),
                  child: const Text(
                    'Python',
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
                  child:
                      const Text('Ruby', style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[3],
                  ),
                  onPressed: () => handleButtonPress(3),
                  child: const Text('JavaScript',
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
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const FourthPage()));
              },
              child: const Text(
                'Next',
                style: TextStyle(color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
