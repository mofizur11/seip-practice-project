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
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: const Text("Day 5 Practice"),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            Image.asset(
              "images/national.png",
              width: double.infinity,
              height: 200,
            ),
            const Text("National Flag",
                style: TextStyle(fontSize: 25, color: Colors.white)),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: const [
                    Icon(
                      Icons.phone,
                      color: Colors.white,
                    ),
                    Text(
                      "Call Me",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                ),
                Row(
                  children: const [
                    Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    Text(
                      "5",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ],
                )
              ],
            ),
            Container(
              decoration: const BoxDecoration(
                color: Colors.red,
                gradient: LinearGradient(colors: [
                  Colors.green,
                  Colors.orange,
                  Colors.green,
                ]),
              ),
              padding: const EdgeInsets.all(15),
              margin: const EdgeInsets.all(15),
              width: 300,
              height: 80,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: const [
                      Icon(Icons.android),
                      Text("Android", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.desktop_windows),
                      Text("Windows", style: TextStyle(color: Colors.white))
                    ],
                  ),
                  Column(
                    children: const [
                      Icon(Icons.tablet_mac_outlined),
                      Text("Ios", style: TextStyle(color: Colors.white))
                    ],
                  )
                ],
              ),
            ),
            const Text(
              "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. \n"
              "Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. Etiam ultricies nisi vel augue. Curabitur ullamcorper ultricies nisi. Nam eget dui. Etiam rhoncus. \n\n"
              "Maecenas tempus, tellus eget condimentum rhoncus, sem quam semper libero, sit amet adipiscing sem neque sed ipsum. Nam quam nunc, blandit vel, luctus pulvinar, hendrerit id, lorem. Maecenas nec odio et ante tincidunt tempus. Donec vitae sapien ut libero venenatis faucibus. Nullam quis ante. Etiam sit amet orci eget eros faucibus tincidunt. Duis leo. Sed fringilla mauris sit amet nibh. Donec sodales sagittis magna. Sed consequat, leo eget bibendum sodales,\n\n"
              " augue velit cursus nunc,",
              style: TextStyle(fontSize: 18, color: Colors.white),
            )
          ],
        ),
      ),
    );
  }
}
