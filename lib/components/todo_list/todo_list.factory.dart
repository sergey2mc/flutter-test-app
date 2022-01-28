import 'package:async_redux/async_redux.dart';

import '../../redux/todo/todo.actions.dart';
import '../../redux/app.state.dart';
import 'todo_list.connector.dart';
import 'todo_list.view_model.dart';

class TodoListFactory extends VmFactory<AppState, TodoListConnector> {
  TodoListFactory(widget) : super(widget);

  @override
  TodoListViewModel fromStore() => TodoListViewModel(
    todos: state.todoState.todos,
    onSaveTodo: (int index, String text) => dispatch(
      SaveTodoAction(
        index: index,
        text: text
      )
    ),
    onEditTodo: (int index) => dispatch(
      EditTodoAction(index: index)
    ),
    onDeleteTodo: (int index) => dispatch(
      DeleteTodoAction(index: index)
    ),
  );
}