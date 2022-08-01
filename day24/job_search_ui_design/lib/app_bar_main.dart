import 'package:flutter/material.dart';

class AppBarMain extends StatefulWidget {
  const AppBarMain({Key? key}) : super(key: key);

  @override
  State<AppBarMain> createState() => _AppBarMainState();
}

class _AppBarMainState extends State<AppBarMain> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 16, right: 16),
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Welcome Home",
                  style: TextStyle(color: Colors.grey),
                ),
                Text(
                  "Mofizur Rahman",
                  style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  margin: const EdgeInsets.only(top: 24),
                  transform: Matrix4.rotationZ(100),
                  child: const Icon(
                    Icons.notifications_none_outlined,
                    size: 42,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(
                  width: 32,
                ),
                const CircleAvatar(
                  backgroundImage: AssetImage("assets/images/avatar.png"),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
