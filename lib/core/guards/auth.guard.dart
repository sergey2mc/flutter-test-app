import 'package:async_redux/async_redux.dart';
import 'package:auto_route/auto_route.dart';
import 'package:get_it/get_it.dart';

import '../../redux/app.state.dart';
import '../router/app.router.gr.dart';

final GetIt getIt = GetIt.instance;

class AuthGuard extends AutoRouteGuard {
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async {
    final _store = getIt<Store<AppState>>();
    final bool isAuthenticated = _store.state.authState.user != null;
    if (isAuthenticated) {
      resolver.next(true);
    } else {
      final bool? result = await router.push<bool>(const AuthPageRoute());
      resolver.next(result!);
    }
  }
}