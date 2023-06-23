import 'package:flutter/material.dart';

import 'screens/page1.dart';

class Home extends StatelessWidget {
  const Home({super. key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Avigo",
      home: PageOne(),
    );
  }
}
