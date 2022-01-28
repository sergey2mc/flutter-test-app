import 'package:async_redux/async_redux.dart';

class AuthPageViewModel extends Vm {
  final Function(String email, String password) onLogIn;

  AuthPageViewModel({
    required this.onLogIn,
  }) : super();
}