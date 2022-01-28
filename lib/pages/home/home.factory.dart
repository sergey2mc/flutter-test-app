import 'package:async_redux/async_redux.dart';

import '../../redux/todo/todo.actions.dart';
import '../../redux/app.state.dart';
import 'home.connector.dart';
import 'home.view_model.dart';

class HomePageFactory extends VmFactory<AppState, HomePageConnector> {
  HomePageFactory(widget) : super(widget);

  @override
  HomePageViewModel fromStore() => HomePageViewModel(
    onAddTodo: () => dispatch(AddTodoAction()),
  );
}