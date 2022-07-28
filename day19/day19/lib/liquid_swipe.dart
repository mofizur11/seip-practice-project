import 'package:day19/page1.dart';
import 'package:day19/page2.dart';
import 'package:day19/page3.dart';
import 'package:flutter/material.dart';
import 'package:liquid_swipe/liquid_swipe.dart';

class LiquidSwipedDemo extends StatelessWidget {
  const LiquidSwipedDemo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LiquidSwipe(
        pages: [Page1(), Page2(), Page3()],
      ),
    );
  }
}
