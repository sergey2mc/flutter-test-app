import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test_app/pages/home/home.connector.dart';

import 'pages/home/home.connector.dart';
import 'redux/app.state.dart';

late Store<AppState> store;

void main() {
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
      home: const HomePageConnector(),
    )
  );
}
