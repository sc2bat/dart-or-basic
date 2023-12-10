import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '가위바위보 게임',
      home: GameScreen(),
    );
  }
}

class GameScreen extends StatefulWidget {
  @override
  _GameScreenState createState() => _GameScreenState();
}

class _GameScreenState extends State<GameScreen> {
  final List<String> choices = ['가위', '바위', '보'];
  String userChoice = '';
  String computerChoice = '';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('가위바위보 게임'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              '컴퓨터: $computerChoice',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(height: 20),
            Text(
              '결과: $result',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                  onPressed: () => playGame('가위'),
                  child: Text('가위'),
                ),
                ElevatedButton(
                  onPressed: () => playGame('바위'),
                  child: Text('바위'),
                ),
                ElevatedButton(
                  onPressed: () => playGame('보'),
                  child: Text('보'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void playGame(String userChoice) {
    setState(() {
      this.userChoice = userChoice;
      this.computerChoice = choices[Random().nextInt(3)];
      this.result = determineWinner(userChoice, computerChoice);
    });
  }

  String determineWinner(String userChoice, String computerChoice) {
    if (userChoice == computerChoice) {
      return '무승부!';
    } else if ((userChoice == '가위' && computerChoice == '보') ||
        (userChoice == '바위' && computerChoice == '가위') ||
        (userChoice == '보' && computerChoice == '바위')) {
      return '이겼습니다!';
    } else {
      return '졌습니다!';
    }
  }
}
