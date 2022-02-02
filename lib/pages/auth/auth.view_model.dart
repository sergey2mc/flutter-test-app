import 'package:async_redux/async_redux.dart';
import 'package:flutter/cupertino.dart';

class AuthPageViewModel extends Vm {
  final Function(
    String email,
    String password,
    BuildContext context
  ) onLogIn;

  AuthPageViewModel({
    required this.onLogIn,
  }) : super();
}