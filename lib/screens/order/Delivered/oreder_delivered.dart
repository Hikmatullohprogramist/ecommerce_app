import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:flutter/material.dart';

class OrderDeliveredScreen extends StatelessWidget {
  const OrderDeliveredScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSetting.bgColor,
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: SingleChildScrollView(
          physics: const BouncingScrollPhysics(),
          child: SizedBox(
            height: 600,
            child: ListView.builder(
              primary: false,
              itemBuilder: (context, index) {
                return Container(
                  // margin: const EdgeInsets.only(
                  // left: 20, right: 20, bottom: 25, top: 25),
                  margin: const EdgeInsets.symmetric(
                    horizontal: 20,
                    vertical: 10,
                  ),
                  height: 171,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    boxShadow: const [
                      AppSetting.backgroundShadow,
                    ],
                    color: AppSetting.subcolor,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      const Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("Order NO23834834843"),
                            Text("20/02/2023"),
                          ],
                        ),
                      ),
                      const Divider(
                        color: AppSetting.disabledColor,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                const Text("Quantity:"),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  "30",
                                  style: AppSetting.poppinsBoldsmall,
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Text("Total Amount:"),
                                Text(
                                  "\$150",
                                  style: AppSetting.poppinsBoldsmall,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              width: 100,
                              height: 36,
                              decoration: const BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    topRight: Radius.circular(3),
                                    bottomRight: Radius.circular(3),
                                  ),
                                  color: AppSetting.mainColor),
                              child: const Center(
                                child: Text(
                                  "Detail",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ),
                            const Text(
                              "Delivered",
                              style: TextStyle(color: AppSetting.successColor),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
