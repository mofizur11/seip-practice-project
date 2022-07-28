import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var category = [
    "Computer",
    "Laptop",
    "Keyboard",
    "Mobile",
    "Mouse",
    "RAM",
    "ROM",
    "Computer",
    "Laptop",
    "Keyboard",
    "Mobile",
    "Mouse",
    "RAM",
    "ROM",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ecommerce"),
      ),
      body: Column(
        children: [
          const Text("Online Shopping",
              style: TextStyle(
                fontSize: 25,
              )),
          const Text("Trusted Area"),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            child: ListView(
              //   padding: EdgeInsets.only(right: 5),
              scrollDirection: Axis.horizontal,
              children: [
                Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.red,
                  ),
                  child: const Expanded(
                      flex: 1,
                      child: Text(
                        "30% Discount",
                      )),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.green,
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.orange,
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
                Container(
                  width: 100,
                  height: 150,
                  decoration: const BoxDecoration(
                    color: Colors.pink,
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("Category"),
              Text("View"),
            ],
          ),
          Container(
            padding: const EdgeInsets.all(10),
            height: 100,
            child: ListView.builder(
              itemCount: category.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) => Container(
                padding: const EdgeInsets.only(right: 5),
                child: Text(category[index]),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
