import 'package:async_redux/async_redux.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';

import '../../core/router/app.router.gr.dart';
import '../../models/user.model.dart';
import '../app.state.dart';

class LogInAction extends ReduxAction<AppState> {
  final String email;
  final String password;
  final BuildContext context;

  LogInAction({
    required this.email,
    required this.password,
    required this.context,
  });

  @override
  AppState reduce() {
    return state.copy(
      authState: state.authState.copy(
        user: User(email: email, password: password)
      ),
    );
  }

  @override
  void after() async {
    await context.router.push(const HomePageConnectorRoute());
  }
}

class LogOutAction extends ReduxAction<AppState> {
  final BuildContext context;

  LogOutAction({
    required this.context,
  });

  @override
  AppState reduce() {
    return state.copy(
      authState: state.authState.copy(
        user: null
      ),
    );
  }

  @override
  void after() async {
    await context.router.push(const AuthPageConnectorRoute());
  }
}
