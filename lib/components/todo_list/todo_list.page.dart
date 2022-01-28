import 'package:flutter/material.dart';

import '../../models/todo.model.dart';

class TodoList extends StatefulWidget {
  final List<Todo>? todos;
  final void Function(int, String)? onSaveTodo;
  final void Function(int)? onDeleteTodo;

  const TodoList({
    Key? key,
    this.todos,
    this.onSaveTodo,
    this.onDeleteTodo,
  }) : super(key: key);

  @override
  _TodoListState createState() => _TodoListState();
}

class _TodoListState extends State<TodoList> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        for (var todo in widget.todos!) Container(
          height: 50,
          color: Colors.amber[600],
          margin: const EdgeInsets.only(bottom: 10),
          child: Center(
            child: todo.editMode
              ? TextField(
                  autofocus: true,
                  controller: _controller,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Type ToDo text...',
                  ),
                  onSubmitted: (String text) {
                    widget.onSaveTodo!(widget.todos!.indexOf(todo), text);
                    _controller.clear();
                  }
                )
              : Padding(
                  padding: const EdgeInsets.all(10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(todo.text),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          textStyle: const TextStyle(
                            fontSize: 20
                          )
                        ),
                        onPressed: () => widget.onDeleteTodo!(widget.todos!.indexOf(todo)),
                        child: const Text('Delete'),
                      ),
                    ],
                  )
                )
          )
        )
      ]
    );
  }
}
