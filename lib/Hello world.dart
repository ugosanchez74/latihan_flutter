import 'package:flutter/material.dart';

class HelloWorld extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Belajar flutter')
      ),
      body: const Center(
        child: Text('Hello World')
      ),
    );

  }
}