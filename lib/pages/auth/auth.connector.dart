import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import '../../redux/app.state.dart';
import 'auth.page.dart';
import 'auth.factory.dart';
import 'auth.view_model.dart';

class AuthPageConnector extends StatelessWidget {
  const AuthPageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, AuthPageViewModel>(
      vm: () => AuthPageFactory(this),
      builder: (BuildContext context, AuthPageViewModel vm) => AuthPage(
        onLogIn: vm.onLogIn,
      ),
    );
  }
}