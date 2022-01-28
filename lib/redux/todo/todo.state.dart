import 'package:flutter/foundation.dart';
import 'package:collection/collection.dart';

import '../../models/todo.model.dart';

class TodoState {
  List<Todo> todos;

  TodoState({
    this.todos = const []
  });

  TodoState copy({ List<Todo>? todos }) {
    return TodoState(
      todos: todos ?? this.todos
    );
  }

  static TodoState initialState() => TodoState();

  @override
  bool operator == (Object other) {
    return identical(this, other) ||
      other is TodoState &&
      runtimeType == other.runtimeType &&
      listEquals(todos, other.todos);
  }

  @override
  int get hashCode => const ListEquality().hash(todos);
}