import 'package:admin_app/api_service/custom_api.dart';
import 'package:admin_app/model/order_model.dart';
import 'package:flutter/material.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({Key? key}) : super(key: key);

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  List<OrderModel> orderList = [];

  @override
  void didChangeDependencies() async {
    orderList = await CustomeHttp().fetchOrder();
    setState(() {});
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: orderList.isNotEmpty
          ? ListView.builder(
              shrinkWrap: true,
              itemCount: orderList.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${orderList[index].user!.name}"),
                        const SizedBox(height: 10,),
                        Text("${orderList[index].price}"),
                        const SizedBox(height: 10,),
                        Text("${orderList[index].quantity}"),
                        const SizedBox(height: 10,),
                      ],
                    ),
                  ),
                );
              })
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
