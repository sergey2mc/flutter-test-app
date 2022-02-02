import 'package:flutter/material.dart';

import '../../shared/components/header.component.dart';
import '../../shared/components/nav.component.dart';

class Page2 extends StatelessWidget {
  const Page2({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: header('Page 2'),
      drawer: nav(context),
      body: const Center(
        child: Text('Page 2 content'),
      )
    );
  }
}
