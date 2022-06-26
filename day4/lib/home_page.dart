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
        title: const Text('Day 4 practice'),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert))
        ],
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.lightGreen, offset: Offset(1.5, 5.3)),
                ],
                color: const Color(0xff629a39),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 3),
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.blue,
                    Colors.green,
                  ],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                )),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            alignment: Alignment.center,
            height: 180.0,
            child: const Text('Mofizur Rahman',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.purple, offset: Offset(-1.5, -5.3)),
                ],
                color: const Color(0xff629a39),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 3),
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.blue,
                    Colors.green,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                )),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            alignment: Alignment.topLeft,
            height: 180.0,
            child: const Text('Day 04',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
          ),
          Container(
            decoration: BoxDecoration(
                boxShadow: const [
                  BoxShadow(color: Colors.pink, offset: Offset(1.5, 5.3)),
                ],
                color: const Color(0xff629a39),
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.white, width: 3),
                gradient: const LinearGradient(
                  colors: [
                    Colors.blue,
                    Colors.green,
                    Colors.blue,
                    Colors.green,
                  ],
                  begin: Alignment.bottomRight,
                  end: Alignment.topLeft,
                )),
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(20),
            width: double.infinity,
            alignment: Alignment.topRight,
            height: 180.0,
            child: const Text('26-06-2022',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                )),
          ),
        ],
      ),
    );
  }
}
