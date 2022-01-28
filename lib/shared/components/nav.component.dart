import 'package:flutter/material.dart';

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
                title: const Text('Item 1'),
                onTap: () {

                  Navigator.pop(context);
                }
              ),
              ListTile(
                title: const Text('Item 2'),
                onTap: () {

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
                onTap: () {

                  Navigator.pop(context);
                }
              )
            ]
          )
        )
      ]
    )
  );
}
