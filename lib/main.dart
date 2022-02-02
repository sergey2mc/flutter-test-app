import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

import 'core/guards/auth.guard.dart';
import 'core/router/app.router.gr.dart';
import 'redux/app.state.dart';

final GetIt getIt = GetIt.instance;

void main() {
  var state = AppState.initialState();

  getIt.registerSingleton<AppRouter>(
    AppRouter(
      authGuard: AuthGuard(),
    )
  );

  getIt.registerSingleton<Store<AppState>>(
    Store<AppState>(
      initialState: state
    )
  );

  runApp(App());
}

class App extends StatelessWidget {
  App({Key? key}) : super(key: key);

  final _appRouter = getIt<AppRouter>();
  final _store = getIt<Store<AppState>>();

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
    store: _store,
    child: MaterialApp.router(
      title: 'Test Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser()
    )
  );
}
