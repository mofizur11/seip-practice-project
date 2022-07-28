import 'package:day12uidesign/screen/payment.dart';
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
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
              snap: false,
              pinned: true,
              floating: false,
              expandedHeight: 180,
              title: const Text("Hotels",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16.0,
                  )),
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                background: Image.network(
                  "https://images.indianexpress.com/2021/06/Welcomhotel-Tavleen-Chail_1200.jpg",
                  fit: BoxFit.cover,
                ),
              ),
              backgroundColor: Colors.greenAccent,
              leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.arrow_back))),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text(
                        "Hotels for you",
                        style: TextStyle(fontSize: 18),
                      ),
                      Icon(Icons.edit),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "140 Results",
                    style: TextStyle(fontSize: 25),
                  ),
                  SizedBox(
                    height: 50,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: const [
                        CircleAvatar(radius: 20, child: Text("Image 1")),
                        SizedBox(
                          height: 25,
                        ),
                        CircleAvatar(child: Text("Image 1")),
                        CircleAvatar(child: Text("Image 2")),
                        CircleAvatar(child: Text("Image 3")),
                        CircleAvatar(child: Text("Image 4")),
                        CircleAvatar(child: Text("Image 5")),
                        CircleAvatar(child: Text("Image 6")),
                        CircleAvatar(child: Text("Image 7")),
                        CircleAvatar(child: Text("Image 8")),
                        CircleAvatar(child: Text("Image 9")),
                        CircleAvatar(child: Text("Image 10")),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 120,
                    decoration: const BoxDecoration(
                      color: Colors.red,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text("Booking"),
                          Icon(Icons.laptop_chromebook_rounded)
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Text("\$15000"),
                  const Text("Booking Id: 14500"),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Facilities"),
                      Text("See All"),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.red,
                        child: const Icon(Icons.wifi),
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.yellow,
                        child: const Icon(Icons.balcony_sharp),
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.green,
                        child: const Icon(Icons.gamepad_rounded),
                      ),
                      Container(
                        width: 50,
                        height: 40,
                        color: Colors.red,
                        child: const Icon(Icons.balcony_sharp),
                      ),
                    ],
                  ),
                  // Row(
                  //   crossAxisAlignment: CrossAxisAlignment.center,
                  //   mainAxisAlignment: MainAxisAlignment.spaceAround,
                  //   children: const [
                  //     SizedBox(
                  //       width: 50,
                  //       height: 40,
                  //       child: Text("Wifi"),
                  //     ),
                  //     SizedBox(
                  //       width: 50,
                  //       height: 40,
                  //       child: Text("Bed"),
                  //     ),
                  //     SizedBox(
                  //       width: 50,
                  //       height: 40,
                  //       child: Text("park"),
                  //     ),
                  //     SizedBox(
                  //       width: 50,
                  //       height: 40,
                  //       child: Text("belCony"),
                  //     ),
                  //   ],
                  // ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (cxt) => const PaymentPage()));
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: const [
                            Icon(Icons.check),
                            Text("Booking Now")
                          ],
                        )),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
