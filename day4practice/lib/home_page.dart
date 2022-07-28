import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.menu),
        title: const Text("day 4 practice"),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Container(
        decoration: BoxDecoration(
            border: Border.all(color: Colors.black, width: 3),
            gradient: const LinearGradient(
                colors: [Colors.red, Colors.white, Colors.blue, Colors.green])),
        width: 300,
        height: 500,
        padding: const EdgeInsets.all(15),
        margin: const EdgeInsets.all(15),
        alignment: Alignment.center,
        child: const Text("Mofizur Rahman"),
      ),
    );
  }
}
