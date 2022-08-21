import 'package:flutter/material.dart';
import 'package:shopping_ui_design/model.dart';
import 'package:shopping_ui_design/product_details.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final productList = Model.getProduct();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.black38,
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.search,
                color: Colors.black38,
              )),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Hi-Fi Shop & Service",style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 22
            ),),
            SizedBox(
              height: 8,
            ),
            Text(
                "Audio shop on Restaveli Ave 57,\nThis shop offers both products and sercices",style: TextStyle(
              fontSize: 14,color: Colors.grey
            ),),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Text("Products",style: TextStyle(
                fontWeight: FontWeight.bold,fontSize: 22
            ),),
                SizedBox(
                  width: 4,
                ),
                Text("41",style: TextStyle(
                    color: Colors.grey,fontSize: 18
                ),),
                Spacer(),
                Text("Show all",style: TextStyle(
                    color: Colors.blue,fontSize: 14
                ),),
              ],
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: productList.length,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) =>
                              ProductDetails(model: productList[index])));
                    },
                    child: Column(
                      children: [
                        Image.asset(productList[index].imageUrl),
                        Text(productList[index].productName),
                        Text(productList[index].productType),
                        Text(productList[index].price)
                      ],
                    ),
                  );
                })
          ],
        ),
      ),
    );
  }
}
