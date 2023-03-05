import 'package:flutter/material.dart';

class popular2 extends StatefulWidget {
  final int index;
  popular2({required this.index});

  @override
  State<popular2> createState() => _popular2State();
}

class _popular2State extends State<popular2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("HI"),
      ),
    );
  }
}