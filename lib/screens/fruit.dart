import 'package:flutter/material.dart';

class Fruit extends StatelessWidget {
  const Fruit({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Fruitery"),
        backgroundColor: const Color(0xFF1F1F1F),
      ),
    );
  }
}
