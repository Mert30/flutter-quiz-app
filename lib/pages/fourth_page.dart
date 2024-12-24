import 'package:flutter/material.dart';
import 'package:flutter_quiz_app/pages/fiveth_page.dart';

class FourthPage extends StatefulWidget {
  const FourthPage({super.key});

  @override
  State<FourthPage> createState() => _FourthPageState();
}

class _FourthPageState extends State<FourthPage> {
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
            const Text('Question 4',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontStyle: FontStyle.italic,
                    fontSize: 20)),
            const SizedBox(
              height: 20,
            ),
            const SizedBox(
              width: 350,
              child: Text(
                'In Python, what is the output of the following code?\n\n  def func(x, y=[]):\n\t\t     y.append(x)\n\t\t     return y\n  print(func(1), func(2))',
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
                  child: const Text('[1], [2]',
                      style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[1],
                  ),
                  onPressed: () => handleButtonPress(1),
                  child: const Text(
                    '[1], [1, 2]',
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
                  child: const Text('[1], [2, 1]',
                      style: TextStyle(color: Colors.white)),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: buttonColors[3],
                  ),
                  onPressed: () => handleButtonPress(3),
                  child: const Text('It gives an error.',
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
                        builder: (context) => const FivethPage()));
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
