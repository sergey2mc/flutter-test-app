import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';

import '../../redux/auth/auth.actions.dart';
import '../../redux/app.state.dart';
import 'auth.connector.dart';
import 'auth.view_model.dart';

class AuthPageFactory extends VmFactory<AppState, AuthPageConnector> {
  AuthPageFactory(widget) : super(widget);

  @override
  AuthPageViewModel fromStore() => AuthPageViewModel(
    onLogIn: (String email, String password, BuildContext context) => dispatch(
      LogInAction(
        email: email,
        password: password,
        context: context,
      )
    ),
  );
}