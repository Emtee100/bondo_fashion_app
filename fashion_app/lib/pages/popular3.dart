import 'package:flutter/material.dart';

class popular3 extends StatefulWidget {
  final int index;
  popular3({required this.index});

  @override
  State<popular3> createState() => _popular3State();
}

class _popular3State extends State<popular3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HI"),
      ),
    );
  }
}