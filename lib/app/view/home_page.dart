import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final String text = 'teste';

  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}