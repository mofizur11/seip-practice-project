import 'package:flutter/material.dart';

class StackPractices extends StatefulWidget {
  const StackPractices({Key? key}) : super(key: key);

  @override
  State<StackPractices> createState() => _StackPracticesState();
}

class _StackPracticesState extends State<StackPractices> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 250,
              decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            Positioned(top: 20, child: Text("Mofizur Rahman"))
          ],
        ),
      ),
    );
  }
}
