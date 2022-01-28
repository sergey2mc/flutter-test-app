import 'package:async_redux/async_redux.dart';

import '../../models/todo.model.dart';

class TodoListViewModel extends Vm {
  final List<Todo> todos;
  final void Function(int, String) onSaveTodo;
  final void Function(int) onDeleteTodo;

  TodoListViewModel({
    required this.todos,
    required this.onSaveTodo,
    required this.onDeleteTodo,
  }) : super(equals: [todos]);
}