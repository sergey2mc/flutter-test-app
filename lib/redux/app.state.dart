import 'package:flutter/cupertino.dart';

import 'auth/auth.state.dart';
import 'todo/todo.state.dart';

@immutable
class AppState {
  final AuthState authState;
  final TodoState todoState;

  const AppState({
    required this.authState,
    required this.todoState,
  });

  AppState copy({
    AuthState? authState,
    TodoState? todoState,
  }) {
    return AppState(
      authState: authState ?? this.authState,
      todoState: todoState ?? this.todoState,
    );
  }

  static AppState initialState() => AppState(
    authState: AuthState.initialState(),
    todoState: TodoState.initialState(),
  );

  @override
  bool operator == (Object other) =>
    identical(this, other) ||
    other is AppState &&
    runtimeType == other.runtimeType &&
    authState == other.authState &&
    todoState == other.todoState;

  @override
  int get hashCode =>
    authState.hashCode ^
    todoState.hashCode;
}