import 'package:async_redux/async_redux.dart';
import 'package:flutter/material.dart';

import '../../redux/app.state.dart';
import 'home.page.dart';
import 'home.factory.dart';
import 'home.view_model.dart';

class HomePageConnector extends StatelessWidget {
  const HomePageConnector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, HomePageViewModel>(
      vm: () => HomePageFactory(this),
      builder: (BuildContext context, HomePageViewModel vm) => HomePage(
        onAddTodo: vm.onAddTodo,
      ),
    );
  }
}