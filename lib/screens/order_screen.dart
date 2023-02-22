import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../model/orders.dart';

class OrderScreen extends StatelessWidget {
  static const routeName = '/order_screen';
  const OrderScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final orderData= Provider.of<Orders>(context).orders;
    return Scaffold(
      appBar: AppBar(
        title: Text("Your Orders"),
      ),
      body: ListView.builder(
        itemBuilder: (ctx,i)=>,
      itemCount: orderData.length,
      ),
    );
  }
}
