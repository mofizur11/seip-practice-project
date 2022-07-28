import 'package:day17/page2.dart';
import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  Page1({Key? key}) : super(key: key);
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  String? name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (cxt) => Page2()));
        },
        child: const Center(
          child: Text("Page 1"),
        ),
      ),
    );
  }
}
