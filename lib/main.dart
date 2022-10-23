import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class Todo {
  late String name;
  late String details;

  Todo(this.name, this.details);
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final List<Todo> todos = [
    Todo("foo", "bar"),
    Todo("hello", "world"),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todolist',
      home: Scaffold(
        appBar: AppBar(title: const Text("Todolist")),
        body: ListView(
          children: [...showTodos(todos)],
        ),
      ),
    );
  }

  List<Widget> showTodos(List<Todo> todos) {
    List<Widget> todosWg = [];

    for (var todo in todos) {
      todosWg.add(
        Row(
          children: [
            Text(todo.name),
            const Text(": "),
            Text(todo.details),
          ],
        ),
      );
    }

    return todosWg;
  }
}
