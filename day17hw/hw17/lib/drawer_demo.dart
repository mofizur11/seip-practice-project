import 'package:flutter/material.dart';

class DrawerDemo extends StatefulWidget {
  const DrawerDemo({Key? key}) : super(key: key);

  @override
  State<DrawerDemo> createState() => _DrawerDemoState();
}

class _DrawerDemoState extends State<DrawerDemo> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: Colors.indigo[200],
        width: 320,
        child: Column(
          children: [
            Container(
              margin: const EdgeInsets.only(top: 16),
              width: 90,
              height: 90,
              child: const CircleAvatar(
                backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/147/147144.png"),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text("Mofizur Rahman"),
            ),
            Container(
              margin: const EdgeInsets.only(top: 16),
              child: const Text("mofizur853@gmail.com"),
            ),
            Container(
              width: double.infinity,
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.indigo[200],
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Text(
                "SIGN OUT",
                textAlign: TextAlign.center,
              ),
            ),
            Column(
              children: [
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.edit,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Add Leads",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.star,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Points Redemption",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.plus_one,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Points",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.person,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Profile",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.dashboard,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Dashboard",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.home,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Home",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Container(
                  color: Colors.white,
                  height: 2,
                  width: double.infinity,
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        "Communicate",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.lock,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Privacy Policy",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.call,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "Contact Us",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.info,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    Text(
                      "About App",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
