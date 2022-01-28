import 'package:async_redux/async_redux.dart';

import '../../models/todo.model.dart';
import '../app.state.dart';

class AddTodoAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    return state.copy(
      todoState: state.todoState.copy(
        todos: [...state.todoState.todos, Todo(editMode: true)]
      ),
    );
  }
}

class SaveTodoAction extends ReduxAction<AppState> {
  final String text;
  final int index;

  SaveTodoAction({
    required this.index,
    required this.text,
  });

  @override
  AppState reduce() {
    return state.copy(
      todoState: state.todoState.copy(
        todos: state.todoState.todos
          .map((Todo t) =>
            state.todoState.todos.indexOf(t) == index
              ? Todo(text: text)
              : t
          )
          .toList()
      ),
    );
  }
}

class DeleteTodoAction extends ReduxAction<AppState> {
  final int index;

  DeleteTodoAction({ required this.index });

  @override
  AppState reduce() {
    List<Todo> todos = [...state.todoState.todos];
    todos.removeAt(index);
    return state.copy(
      todoState: state.todoState.copy(
          todos: todos
      ),
    );
  }
}