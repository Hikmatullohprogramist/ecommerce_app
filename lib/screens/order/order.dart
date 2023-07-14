import 'package:ecommerce_app/screens/order/Canceled/order_cancelled.dart';
import 'package:ecommerce_app/screens/order/Delivered/oreder_delivered.dart';
import 'package:ecommerce_app/screens/order/Processing/order_processing.dart';
import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:flutter/material.dart';

class OrdersScreen extends StatefulWidget {
  const OrdersScreen({super.key});

  @override
  State<OrdersScreen> createState() => _OrdersScreenState();
}

class _OrdersScreenState extends State<OrdersScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: AppSetting.bgColor,
        appBar: AppBar(
          backgroundColor: AppSetting.bgColor,
          title: Text(
            "My Order",
            style: AppSetting.poppinsBoldp,
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: const Column(
          children: [
            TabBar(
              tabs: [
                Tab(
                  text: "Delivered",
                ),
                Tab(
                  text: "Processing",
                ),
                Tab(
                  text: "Canceled",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  OrderDeliveredScreen(),
                  OrderProcessingScreen(),
                  OrderCancelledScreen(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
