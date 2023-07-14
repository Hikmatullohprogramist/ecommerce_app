import 'package:flutter/material.dart';

import '../../utils/global_guides.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My reviews",
          style: AppSetting.poppinsBoldp,
        ),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: AppSetting.bgColor,
      ),
      backgroundColor: AppSetting.bgColor,
      body: ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(
              vertical: 10,
              horizontal: 20,
            ),
            width: 335,
            height: 245,
            decoration: BoxDecoration(
              borderRadius: BorderRadiusDirectional.circular(12),
              color: AppSetting.subcolor,
              boxShadow: const [
                AppSetting.backgroundShadow,
              ],
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 73,
                        height: 70,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          image: const DecorationImage(
                            image: AssetImage(
                              "assets/images/coffee_chair.jpg",
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Coffee Table",
                          style: AppSetting.poppinsRegularlabel,
                        ),
                        Text(
                          "\$50.00",
                          style: AppSetting.poppinsBoldlabel,
                        ),
                      ],
                    )
                  ],
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.amber,
                          ),
                        ],
                      ),
                      Text(
                        "20/03/2020",
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Minim sit ut in qui exercitation duis nulla ea minim incididunt sit eu qui.Reprehenderit in do ipsum laborum ipsum deserunt consequat magna occaecat. ",
                    style: AppSetting.poppinsRegularsmall,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
