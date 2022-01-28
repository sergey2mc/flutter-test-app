import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import '../../redux/app.state.dart';
import 'todo_list.page.dart';
import 'todo_list.factory.dart';
import 'todo_list.view_model.dart';

class TodoListConnector extends StatelessWidget {
  const TodoListConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, TodoListViewModel>(
      vm: () => TodoListFactory(this),
      builder: (BuildContext context, TodoListViewModel vm) => TodoList(
        todos: vm.todos,
        onSaveTodo: vm.onSaveTodo,
        onDeleteTodo: vm.onDeleteTodo,
      ),
    );
  }
}