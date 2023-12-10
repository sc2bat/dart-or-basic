import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '스도쿠 게임',
      home: SudokuGame(),
    );
  }
}

class SudokuGame extends StatefulWidget {
  @override
  _SudokuGameState createState() => _SudokuGameState();
}

class _SudokuGameState extends State<SudokuGame> {
  late List<List<int>> sudokuBoard;

  @override
  void initState() {
    super.initState();
    // 초기 스도쿠 보드 설정
    sudokuBoard = [
      [5, 3, 0, 0, 7, 0, 0, 0, 0],
      [6, 0, 0, 1, 9, 5, 0, 0, 0],
      [0, 9, 8, 0, 0, 0, 0, 6, 0],
      [8, 0, 0, 0, 6, 0, 0, 0, 3],
      [4, 0, 0, 8, 0, 3, 0, 0, 1],
      [7, 0, 0, 0, 2, 0, 0, 0, 6],
      [0, 6, 0, 0, 0, 0, 2, 8, 0],
      [0, 0, 0, 4, 1, 9, 0, 0, 5],
      [0, 0, 0, 0, 8, 0, 0, 7, 9],
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('스도쿠 게임'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // 스도쿠 보드 출력
              for (int i = 0; i < 9; i++)
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    for (int j = 0; j < 9; j++)
                      SudokuCell(
                        value: sudokuBoard[i][j],
                        onChange: (newValue) {
                          setState(() {
                            sudokuBoard[i][j] = newValue;
                          });
                        },
                      ),
                  ],
                ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // 정답 여부 확인 등 추가 로직 구현
                  // 여기에서는 간단히 정답 여부만 확인
                  bool isCorrect = checkSolution(sudokuBoard);
                  if (isCorrect) {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('축하합니다!'),
                          content: Text('스도쿠를 해결했습니다!'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('확인'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: Text('틀렸습니다.'),
                          content: Text('스도쿠를 다시 확인해보세요.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('확인'),
                            ),
                          ],
                        );
                      },
                    );
                  }
                },
                child: Text('정답 확인'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  bool checkSolution(List<List<int>> board) {
    // 여기에서는 간단히 모든 행, 열, 3x3 영역에 1에서 9까지의 숫자가 중복되지 않는지 확인
    for (int i = 0; i < 9; i++) {
      if (!isValidRow(board, i) ||
          !isValidColumn(board, i) ||
          !isValidBox(board, i)) {
        return false;
      }
    }
    return true;
  }

  bool isValidRow(List<List<int>> board, int row) {
    Set<int> set = Set();
    for (int i = 0; i < 9; i++) {
      if (board[row][i] != 0 && !set.add(board[row][i])) {
        return false;
      }
    }
    return true;
  }

  bool isValidColumn(List<List<int>> board, int col) {
    Set<int> set = Set();
    for (int i = 0; i < 9; i++) {
      if (board[i][col] != 0 && !set.add(board[i][col])) {
        return false;
      }
    }
    return true;
  }

  bool isValidBox(List<List<int>> board, int box) {
    Set<int> set = Set();
    int startRow = (box ~/ 3) * 3;
    int startCol = (box % 3) * 3;
    for (int i = startRow; i < startRow + 3; i++) {
      for (int j = startCol; j < startCol + 3; j++) {
        if (board[i][j] != 0 && !set.add(board[i][j])) {
          return false;
        }
      }
    }
    return true;
  }
}

class SudokuCell extends StatelessWidget {
  final int value;
  final Function(int) onChange;

  SudokuCell({required this.value, required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 30,
      height: 30,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Center(
        child: Text(
          value != 0 ? value.toString() : '',
          style: TextStyle(fontSize: 16),
        ),
      ),
    );
  }
}
