import 'package:flutter/material.dart';

class DataScreen extends StatelessWidget {
  final String text;
  const DataScreen({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(text),
      ),
    );
  }
}
