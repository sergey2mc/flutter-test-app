import 'package:flutter/material.dart';

PreferredSizeWidget header(String title) {
  return AppBar(
    title: Text(title),

    leading: Builder(builder: (context) => // Ensure Scaffold is in context
      IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () => Scaffold.of(context).openDrawer()
      ),
    ),

    actions: <Widget>[
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.search)
        )
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20.0),
        child: GestureDetector(
          onTap: () {},
          child: const Icon(Icons.more_vert)
        )
      )
    ]
  );
}