import 'package:flutter/material.dart';

class ColumnWidget extends StatelessWidget {
  const ColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Widget row'),
      ),
      body: const Row(
        children: const [
          Text('row 1'),
          Text('row 3'),
          Text('row 2'),
          Text('row 4'),
        ],
      ),
    );
  }
}

