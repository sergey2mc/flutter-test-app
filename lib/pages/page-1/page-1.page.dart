import 'package:flutter/material.dart';

import '../../shared/components/header.component.dart';
import '../../shared/components/nav.component.dart';

class Page1 extends StatelessWidget {
  const Page1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('Page 1'),
      drawer: nav(context),
      body: const Center(
        child: Text('Page 1 content'),
      )
    );
  }
}
