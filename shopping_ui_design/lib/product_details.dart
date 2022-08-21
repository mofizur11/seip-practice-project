import 'package:flutter/material.dart';
import 'package:shopping_ui_design/model.dart';

class ProductDetails extends StatefulWidget {
  const ProductDetails({Key? key, required this.model}) : super(key: key);

  final Model model;

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  int currentItem = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "My Cart",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    flex: 1,
                    child: Container(
                      decoration:
                          BoxDecoration(borderRadius: BorderRadius.circular(5)),
                      child: Image.asset(widget.model.imageUrl),
                    )),
                Expanded(
                    flex: 2,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.model.productName,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          widget.model.productType,
                          style: TextStyle(fontSize: 18),
                        ),
                        Text(
                          widget.model.price + "(-\$4.00 Tax)",
                          style: TextStyle(color: Colors.grey, fontSize: 14),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    currentItem--;
                                  });
                                },
                                icon: Text("-")),
                            SizedBox(
                              width: 5,
                            ),
                            Text("$currentItem"),
                            SizedBox(
                              width: 5,
                            ),
                            IconButton(
                                onPressed: () {
                                  setState(() {
                                    currentItem++;
                                  });
                                },
                                icon: Text("+")),
                            Spacer(),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(Icons.delete_rounded)),
                          ],
                        )
                      ],
                    ))
              ],
            )
          ],
        ),
      ),
    );
  }
}
