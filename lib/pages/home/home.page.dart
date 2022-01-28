import 'package:flutter/material.dart';

import '../../components/todo_list/todo_list.connector.dart';
import '../../shared/components/header.component.dart';

class HomePage extends StatelessWidget {
  final VoidCallback onAddTodo;

  const HomePage({
    Key? key,
    required this.onAddTodo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('Todo app'),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.all(10.0),
        alignment: Alignment.center,
        color: Colors.red[600],
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(
                bottom: 10
              ),
              child: const Text(
                'Title',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 255, 1),
                  fontWeight: FontWeight.bold,
                  fontSize: 24
                )
              )
            ),
            Container(
              margin: const EdgeInsets.only(
                bottom: 10
              ),
              child: const Text(
                'Subtitle',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color.fromRGBO(0, 0, 255, 1),
                  fontWeight: FontWeight.normal,
                  fontSize: 18
                )
              )
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    textStyle: const TextStyle(
                      fontSize: 20
                    )
                  ),
                  onPressed: () => onAddTodo(),
                  child: const Text('Add todo'),
                )
              ]
            ),
            const TodoListConnector()
          ]
        ),
      )
    );
  }
}
