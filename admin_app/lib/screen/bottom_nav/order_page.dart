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
          ? Column(
            children: [
              ListView.builder(
                  shrinkWrap: true,
                  itemCount: orderList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text("${orderList[index].user!.name}"),
                    );
                  })
            ],
          )
          : const Center(child: CircularProgressIndicator()),
    );
  }
}
