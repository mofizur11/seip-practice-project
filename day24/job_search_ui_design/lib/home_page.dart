import 'package:flutter/material.dart';
import 'package:job_search_ui_design/app_bar_main.dart';
import 'package:job_search_ui_design/home_main_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            AppBarMain(),
            SizedBox(height: 16),
            HomeMainScreen(),
          ],
        ),
      ),
    );
  }
}
