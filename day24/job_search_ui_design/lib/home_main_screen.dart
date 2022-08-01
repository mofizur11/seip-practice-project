import 'package:flutter/material.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({Key? key}) : super(key: key);

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 300,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.green,
            image: const DecorationImage(
              image: AssetImage("assets/images/search_bg.png"),
              fit: BoxFit.cover,
            )),
        child: Container(
          padding: const EdgeInsets.all(16),
          margin: const EdgeInsets.only(top: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Fast Search",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const Text(
                "You can search quickly for \nthe job you want",
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                margin: const EdgeInsets.only(right: 26),
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20)),
                child: Row(
                  children: const [
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    Text(
                      " Search",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
