import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List images = [
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
    "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_960_720.jpg",
    "https://cdn.pixabay.com/photo/2012/03/01/00/55/garden-19830_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/07/21/13/00/rose-165819_960_720.jpg",
    "https://cdn.pixabay.com/photo/2013/08/22/19/18/flowers-174817_960_720.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          color: Colors.red,
        ),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 1,
          mainAxisSpacing: 1,
          children: List.generate(images.length, (index) {
            return Padding(
              padding: EdgeInsets.all(2.0),
              child: Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: NetworkImage(images[index]), fit: BoxFit.cover)),
                child: Center(child: Text("Flowers")),
              ),
            );
          }),
        ),
      ),
    );
  }
}
