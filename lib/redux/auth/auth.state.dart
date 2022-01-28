import 'package:collection/collection.dart';

import '../../models/user.model.dart';

class AuthState {
  User? user;

  AuthState({
    this.user
  });

  AuthState copy({ User? user }) {
    return AuthState(
      user: user ?? this.user
    );
  }

  static AuthState initialState() => AuthState(user: null);

  @override
  bool operator == (Object other) {
    return identical(this, other) ||
      other is AuthState &&
      runtimeType == other.runtimeType &&
      const Equality().equals(user, other.user);
  }

  @override
  int get hashCode => const Equality().hash(user);
}