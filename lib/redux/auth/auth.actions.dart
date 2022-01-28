import 'package:async_redux/async_redux.dart';

import '../../models/user.model.dart';
import '../app.state.dart';

class LogInAction extends ReduxAction<AppState> {
  final String email;
  final String password;

  LogInAction({
    required this.email,
    required this.password,
  });

  @override
  AppState reduce() {
    return state.copy(
      authState: state.authState.copy(
        user: User(email: email, password: password)
      ),
    );
  }
}

class LogOutAction extends ReduxAction<AppState> {
  @override
  AppState reduce() {
    return state.copy(
      authState: state.authState.copy(
        user: null
      ),
    );
  }
}
