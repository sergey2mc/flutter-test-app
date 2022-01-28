import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';

class HomePageViewModel extends Vm {
  final VoidCallback onAddTodo;

  HomePageViewModel({
    required this.onAddTodo,
  }) : super();
}