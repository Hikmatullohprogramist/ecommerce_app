// ignore_for_file: sized_box_for_whitespace

import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:flutter/material.dart';

class ShippingScreen extends StatefulWidget {
  const ShippingScreen({super.key});

  @override
  State<ShippingScreen> createState() => _ShippingScreenState();
}

class _ShippingScreenState extends State<ShippingScreen> {
  bool isChecked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppSetting.bgColor,
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppSetting.subcolor,
          onPressed: () {},
          child: const Icon(Icons.add),
        ),
        appBar: AppBar(
          title: Text(
            "Shipping address",
            style: AppSetting.poppinsBoldp,
          ),
          centerTitle: true,
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_ios_new),
            onPressed: () => Navigator.pop(context),
          ),
          backgroundColor: AppSetting.bgColor,
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return Container(
              width: 330,
              height: 171,
              child: Column(
                children: [
                  Row(
                    children: [
                      Checkbox(
                        activeColor: AppSetting.mainColor,
                        value: isChecked,
                        onChanged: (value) {
                          setState(() {
                            isChecked = value!;
                          });
                        },
                      ),
                      const Text("Use as the shipping address")
                    ],
                  ),
                  Container(
                    width: 335,
                    height: 120,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(14),
                      boxShadow: const [
                        AppSetting.backgroundShadow,
                      ],
                      color: AppSetting.subcolor,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12, bottom: 8, top: 12),
                          child: Text(
                            "Bruno Fernandez",
                            style: AppSetting.poppinsBoldlabel,
                          ),
                        ),
                        const Divider(),
                        Padding(
                          padding: const EdgeInsets.only(
                              left: 12.0, right: 12, bottom: 8, top: 12),
                          child: Text(
                            "123 asd asd asd asdasd ad asd asddd ddd asdasd d asdasd asd ad adadasd",
                            style: AppSetting.poppinsRegularsmall,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ));
  }
}
