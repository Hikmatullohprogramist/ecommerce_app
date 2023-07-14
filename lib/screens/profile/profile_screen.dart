// ignore_for_file: sized_box_for_whitespace, prefer_const_constructors

import 'package:ecommerce_app/screens/order/order.dart';
import 'package:ecommerce_app/screens/review/review.dart';
import 'package:ecommerce_app/screens/shipping/shipping.dart';
import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/profile_card.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSetting.bgColor,
      appBar: AppBar(
        backgroundColor: AppSetting.bgColor,
        automaticallyImplyLeading: false,
        centerTitle: true,
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.only(left: 20.0, right: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: 100,
                child: Row(
                  children: [
                    const CircleAvatar(
                      backgroundImage: AssetImage("assets/images/my_image.jpg"),
                      radius: 35,
                    ),
                    const SizedBox(
                      width: 22,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hikmatillo Madaliyev",
                          style: AppSetting.poppinsBoldh5,
                        ),
                        Text(
                          "tillo2439@gmail.com",
                          style: AppSetting.poppinsRegularp,
                        ),
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: MediaQuery.sizeOf(context).height,
                child: ListView(
                  shrinkWrap: true,
                  primary: false,
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => OrdersScreen(),
                          )),
                      child: ProfileCard(
                        title: "My orders",
                        subtitle: "Already have 10 orders",
                      ),
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ShippingScreen(),
                          )),
                      child: ProfileCard(
                        title: "Shipping Addresses",
                        subtitle: "03 Addresses",
                      ),
                    ),
                    ProfileCard(
                      title: "Payment Method",
                      subtitle: "You have 2 cards",
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => ReviewScreen(),
                          )),
                      child: ProfileCard(
                        title: "My reviews",
                        subtitle: "Review for 5 items",
                      ),
                    ),
                    ProfileCard(
                      title: "Settings",
                      subtitle: "Notification, Password, FAQ, Contact",
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
