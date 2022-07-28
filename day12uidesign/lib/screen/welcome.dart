import 'package:day12uidesign/screen/home_page.dart';
import 'package:flutter/material.dart';

class WelComePage extends StatefulWidget {
  const WelComePage({Key? key}) : super(key: key);

  @override
  State<WelComePage> createState() => _WelComePageState();
}

class _WelComePageState extends State<WelComePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(

                image: NetworkImage(
                    "https://images.indianexpress.com/2021/06/Welcomhotel-Tavleen-Chail_1200.jpg")),
          ),
          child: Column(
            children: [
              const Text(
                "Travel with",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "Comfort & ",
                style: TextStyle(fontSize: 25),
              ),
              const Text(
                "Safety!",
                style: TextStyle(fontSize: 25),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 0, 0),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (cxt) => const HomePage()));
                    },
                    child: const Text("Go To Next Page")),
              )
            ],
          )),
    );
  }
}
