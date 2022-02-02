import 'package:flutter/material.dart';
import 'package:async_redux/async_redux.dart';
import 'package:auto_route/auto_route.dart';

import '../../core/router/app.router.gr.dart';
import '../../redux/app.state.dart';
import '../../redux/auth/auth.actions.dart';

Drawer nav(BuildContext context) {
  return Drawer(
    child: Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: [
              const DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Text('Nav Header')
              ),
              ListTile(
                title: const Text('Page 1'),
                onTap: () async {
                  await context.router.push(const Page1Route());
                  Navigator.pop(context);
                }
              ),
              ListTile(
                title: const Text('Page 2'),
                onTap: () async {
                  await context.router.push(const Page2Route());
                  Navigator.pop(context);
                }
              )
            ]
          )
        ),
        Align(
          alignment: FractionalOffset.bottomCenter,
          child: Column(
            children: <Widget>[
              const Divider(),
              ListTile(
                title: const Text('Log Out'),
                onTap: () => StoreProvider.dispatch<AppState>(
                  context,
                  LogOutAction(
                    context: context
                  )
                )
              )
            ]
          )
        )
      ]
    )
  );
}
