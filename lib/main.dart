import 'package:flutter/material.dart';

import './finance_app.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Finance app',
      home: FinanceApp(),
    );
  }
}
