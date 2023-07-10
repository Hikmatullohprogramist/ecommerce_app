// ignore_for_file: non_constant_identifier_names

import 'package:ecommerce_app/utils/global_guides.dart';
import 'package:ecommerce_app/widgets/button.dart';
import 'package:flutter/material.dart';

class ProductInfoScreen extends StatefulWidget {
  final String product_name;
  final String product_image;
  final String product_price;
  final String product_rating;
  final String product_comment;
  const ProductInfoScreen({
    super.key,
    required this.product_name,
    required this.product_image,
    required this.product_price,
    required this.product_rating,
    required this.product_comment,
  });

  @override
  State<ProductInfoScreen> createState() => _ProductInfoScreenState();
}

class _ProductInfoScreenState extends State<ProductInfoScreen> {
  int number = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppSetting.bgColor,
      body: Stack(
        children: [
          Positioned(
            left: 42,
            child: Container(
              width: 400,
              height: 490,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(widget.product_image),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(50),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 20,
            child: Container(
              width: 50,
              height: 150,
              margin: const EdgeInsets.only(top: 8, bottom: 8),
              padding: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: AppSetting.subcolor,
                  boxShadow: [AppSetting.backgroundShadow]),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: const Color(0xff919191),
                        width: 4,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffB4906C),
                      border: Border.all(
                        color: const Color(0xffF0F0F0),
                        width: 4,
                      ),
                    ),
                  ),
                  Container(
                    width: 35,
                    height: 35,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: const Color(0xffE4CBAD),
                      border: Border.all(
                        color: const Color(0xffF0F0F0),
                        width: 4,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 70,
            left: 20,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                boxShadow: const [
                  AppSetting.backgroundShadow,
                ],
                borderRadius: BorderRadius.circular(8),
                color: AppSetting.subcolor,
              ),
              child: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: const Icon(
                    Icons.arrow_back_ios_new_outlined,
                    size: 15,
                    color: AppSetting.mainColor,
                  )),
            ),
          ),
          Positioned(
            top: 485,
            child: Container(
              padding: const EdgeInsets.all(20),
              width: MediaQuery.sizeOf(context).width,
              height: MediaQuery.sizeOf(context).height,
              child: SingleChildScrollView(
                primary: false,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.product_name,
                      style: AppSetting.poppinsRegularh4,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "${widget.product_price} \$",
                          style: AppSetting.poppinsBoldh4,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  number++;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppSetting.disabledColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(
                                  Icons.exposure_plus_1_sharp,
                                  color: AppSetting.mainColor,
                                ),
                              ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(number.toString()),
                            const SizedBox(
                              width: 10,
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  if (number != 1) number--;
                                });
                              },
                              child: Container(
                                width: 40,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppSetting.disabledColor,
                                  borderRadius: BorderRadius.circular(4),
                                ),
                                child: const Icon(
                                  Icons.exposure_minus_1_sharp,
                                  color: AppSetting.mainColor,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: AppSetting.yellowColor,
                        ),
                        Text(
                          widget.product_rating,
                          style: AppSetting.poppinsBoldh5,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          "(50 reviews)",
                          style: AppSetting.poppinsRegularsmall,
                        ),
                      ],
                    ),
                    // const SizedBox(
                    //   height: 5,
                    // ),
                    Text(
                      widget.product_comment,
                      style: AppSetting.poppinsRegularp,
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                            color: AppSetting.greyColor,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: const Icon(Icons.bookmark),
                        ),
                        Container(
                          width: 280,
                          child: const CustomButton(title: "Add to card"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
