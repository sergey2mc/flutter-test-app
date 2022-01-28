import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import 'pages/auth/auth.connector.dart';
import 'pages/home/home.connector.dart';
import 'redux/app.state.dart';

final navigatorKey = GlobalKey<NavigatorState>();
late Store<AppState> store;

void main() {
  NavigateAction.setNavigatorKey(navigatorKey);
  var state = AppState.initialState();
  store = Store<AppState>(initialState: state);
  runApp(const App());
}

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => StoreProvider<AppState>(
    store: store,
    child: MaterialApp(
      title: 'Test Flutter App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      navigatorKey: navigatorKey,
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePageConnector(),
        '/auth': (context) => const AuthPageConnector(),
      },
    )
  );
}
