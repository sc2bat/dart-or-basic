import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:simple_logger/simple_logger.dart';

final log = SimpleLogger();

void main() async {
  Todo todo = await getTodo(1);

  log.info(todo.title);
  // 👻 INFO 2023-12-14 14:44:26.987 [caller info not available] delectus aut autem
}

class Todo {
  int? userId;
  int? id;
  String? title;
  bool? completed;

  Todo({
    this.userId,
    this.id,
    this.title,
    this.completed,
  });

  // 추가: factory constructor로 변경
  factory Todo.fromJson(Map<String, dynamic> json) {
    return Todo(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  // toJson() 메서드는 현재 사용되지 않으므로 제거
}

Future<Todo> getTodo(int id) async {
  final uri = 'https://jsonplaceholder.typicode.com/todos/$id';
  final response = await http.get(Uri.parse(uri));

  if (response.statusCode == 200) {
    final jsonMap = jsonDecode(response.body);
    return Todo.fromJson(jsonMap);
  } else {
    throw Exception('Failed to load todo');
  }
}
