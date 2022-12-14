import 'package:flutter/material.dart';

class Oct11Page5 extends StatelessWidget {
  final String id;
  final String? filter;
  const Oct11Page5({
    Key? key,
    required this.id,
    required this.filter,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amberAccent,
        title: const Text('Page5'),
        centerTitle: true,
        elevation: 0.0,
      ),
    );
  }
}
