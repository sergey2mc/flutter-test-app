import 'package:flutter/material.dart';

PreferredSizeWidget header(String title) {
  return AppBar(
    title: Text(title),
    leading: const Icon(Icons.menu),
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